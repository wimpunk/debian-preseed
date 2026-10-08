# README #

## How do I get set up ##

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
* [ ] add a public usable by everyone
