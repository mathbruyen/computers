# Raspberry PI

## System

Follow instructions on [elinux](http://elinux.org/RPi_Easy_Card_Setup) with Debian Squeeze. If it
does not work, check [elinux](http://elinux.org/R-Pi_Troubleshooting). In particular replacing
`bootcode.bin` file by one provided on the page may help depending on the SD card.

## Git

### Config

    git config --global %NAME% "%VALUE%"

* color.ui always
* user.name
* user.email

### Github

<https://help.github.com/articles/generating-ssh-keys>

## NodeJS

Add an apt source for sid to get latest versions of NodeJS, ex:

    echo deb ftp://ftp.uk.debian.org/debian/ sid main >> /etc/apt/sources.list.d/sid.list

Be careful as it means that future upgrades will bring a lot of packages from sid.

And then simply:

    sudo apt-get update
    sudo apt-get install nodejs npm

