# README #

## How do I get set up ##

### Simplier ###

Boot the system from a debian install CD.  Choose "Advanced Options" followed by
"Automated Install".  It will ask for an URL.
Use `https://bitbucket.org/24sea/debian-preseed/raw/master/preseed.cfg` as location.

### Hardest way ###

Boot the system from CD and press `e` to edit the non-graphical installation.  Remove the `quiet` part and
add this when starting up:

```lang-none
keymap=us \
locale=en_US \
auto \
url=https://tinyurl.com/y7mbsk5v \
interface=enp5s0 \
hostname=debian
```

To make it readable we splitted it in multiple lines.  It should be on one line.

Boot the system by pressing `F10`.

### Simplier ###

Boot the system from a debian install CD.  Choose "Advanced Options" followed by
"Automated Install".  It will ask for an URL.
Use `https://raw.githubusercontent.com/wimpunk/debian-preseed/master/preseed.cfg`
as location.
Or use the short version `https://tinyurl.com/y7mbsk5v`

## Afterwards ##

The system is accessible using ssh and on the console

* username has been saved in keeper, search for preseed.
* root accessible on ssh using wim's favorite private keys.

## issues ##

* [ ] It should use a shared ansible key and install the needed packages
      to work with ansible
* [ ] install salt-minion and the minion key
* [ ] make access on the console possible in rescue mode
* [x] add a public ssh-key usable by everyone
* [ ] it would be easier if the IP was shown after booting

## links ##

* https://wiki.debian.org/DebianInstaller/Preseed/EditIs
* https://gist.github.com/ageekymonk/3d691d89c14da837955c
* https://wiki.debian.org/Installation+Archive+USBStick
* https://gist.github.com/nmaupu/1040657ac7728adff0356ec3139a22f9
* https://www.debian.org/releases/trixie/example-preseed.txt
