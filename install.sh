#/bin/sh

if [ "$UID" != "0" ]
	then echo "This script is not running as root... exiting" && exit 1
fi

echo "Checking transmission installation..."

if [ ! -d "$(find /usr/share/transmission/ -iname "web" -type d)" ]

	then echo "Installation folder not found."

	while : ; do
		echo -n "Please insert web directory installation path: "
		read installdir
		[ -d "$installdir" ] && break
		echo "Directory not found..."
	done

	echo "Installing in $installdir/web..."
	sleep 1

else
	installdir='/usr/share/transmission'
	echo "Directory found! Installing in $installdir/web..."
	sleep 1
fi

cp -rv ./web/* ${installdir}/web/

echo -e "\nTransmission soft theme successfully installed!\n \nWould you like to apply a soft theme now?\nNOTE: if you've already installed it, just modify the " $installdir "/web/index.html following the instructions on the wiki!\n"
PS3=': '
options=( "Dark" "Light" "Quit" )
select opt in "${options[@]}"
do
	case $opt in
    "Dark")
				sed -i '21i\\t\t<link href="./style/transmission/soft-theme.min.css" type="text/css" rel="stylesheet" />\n\t\t<link href="style/transmission/soft-dark-theme.min.css" type="text/css" rel="stylesheet" />\n' ${installdir}/web/index.html;
        echo "Soft dark theme successfully applied!";
				break;;
    "Light")
        sed -i '21i\\t\t<link href="./style/transmission/soft-theme.min.css" type="text/css" rel="stylesheet" />\n\t\t<link href="style/transmission/soft-light-theme.min.css" type="text/css" rel="stylesheet" />\n' ${installdir}/web/index.html;
        echo "Soft light theme successfully applied!";
				break;;
     "Quit")
		 		echo 'You can always install it following the https://git.eigenlab.org/sbiego/transmission-web-soft-theme/wikis/home';
        break;;
      *) echo 'invalid option'
			esac
done
