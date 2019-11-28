#!/bin/bash

echo Select ( Light / Dark ) :
read theme

# Set Cursor theme
echo Linking Cursor file.. SU
ln -s /Cursor /usr/share/icons/Cursor
gsettings set org.gnome.desktop.interface cursor-theme Cursor
echo Cursor applied !

# Set icon theme
echo Moving icons folder to ~/.icons
mv .icons .icons-backup
mkdir ~/.icons
cd /icons ~/.icons/Windows10
gsettings set org.gnome.desktop.interface icon-theme Windows10
echo Icons Applied !

#Set GTK and Gnome Theme
echo Pulling theme from remote repo.
if ["$theme" = "Light"]
then
    mkdir ~/.themes
    cd ~/.themes
    git clone https://github.com/B00merang-Project/Windows-10.git
    gsettings set org.gnome.desktop.interface gtk-theme Windows-10
    gsettings set org.gnome.shell.extensions.user-theme Windows-10
    echo Windows10 $theme applied !
elif ["$theme" = "Light"]
    mkdir ~/.themes
    cd ~/.themes
    git clone https://github.com/B00merang-Project/Windows-10-Dark.git
    gsettings set org.gnome.desktop.interface gtk-theme Windows-10-Dark
    gsettings set org.gnome.shell.extensions.user-theme Windows-10-Dark
    echo Windows10 $theme applied !
else
    echo Enter correctly !
fi
echo I recommend using dash to panel extension, windows icon is in ~/.icons/Windows10
echo Check out my GitHub profile at https://github.com/kushagrakarira
