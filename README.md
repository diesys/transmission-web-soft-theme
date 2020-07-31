Transmission-web soft theme
===

### [Transmission](https://github.com/transmission/transmission) web interface theme in two variants made by

 * three different CSS stylesheet, one for impagination and the other two for dark and light theme
 * a set of images (favicon and UI icons)

### See the [wiki](https://git.eigenlab.org/sbiego/transmission-web-soft-theme/wikis/home) for installation instructions.

### Screenshots  

##### Light  

![soft light](https://git.eigenlab.org/sbiego/transmission-web-soft-theme/raw/master/transmission-web-soft-light-screen.png)

##### Dark  

![soft dark](https://git.eigenlab.org/sbiego/transmission-web-soft-theme/raw/master/transmission-web-soft-dark-screen.png)



### Enable/install

Edit the `index.html` file placed into the root of transmission web daemon (usually: `/usr/share/transmission/web/`) following lines **as last stylesheet** (*Note: minified css use is suggested for network performance, non-minified for debugging*)

The main theme (required)

`<link href="./style/transmission/soft-theme.min.css" type="text/css" rel="stylesheet" />`

Choose **one** of the two variants (`dark` or `light`)

*  `<link href="./style/transmission/soft-light-theme.min.css" type="text/css" rel="stylesheet" />`  

*  `<link href="./style/transmission/soft-dark-theme.min.css" type="text/css" rel="stylesheet" />`  
