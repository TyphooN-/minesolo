#!/bin/sh
echo -e "\e[96mDo you wish to DELETE the solo blockchain and IMPORT a new one? (y/n)? \e[39m"
read answer

if [ "$answer" != "${answer#[Yy]}" ] ;then
    echo Yes
else
    echo Exiting!
    exit 0
fi

