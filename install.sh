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
	installdir='/usr/share/transmission/'
	echo "Directory found! Installing in $installdir/web..."
	sleep 1

fi

cp -rv ./web/* ${installdir}/web/

echo "Transmission theme successfully installed!"
