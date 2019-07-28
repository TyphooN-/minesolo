#!/bin/sh

echo -n "\e[96mDo you wish to DELETE the solo blockchain and IMPORT a new one? (y/n)? \e[39m"
read answer

if [ "$answer" != "${answer#[Yy]}" ] ;then
	rm -Rf ~/.solo
	echo "\e[96mDownloading SOLO blockchain snapshot\e[39m"
	rm blockchain.raw
	echo "\e[96mDownloading blockchain snapshot\e[39m"
	wget -O blockchain.raw https://www.minesolo.com/release/blockchain.raw
	echo "\e[96mImporting Blockchain\e[39m"
	./solo-blockchain-import --input-file blockchain.raw --verify 0
	echo "Done"

else
    echo Exiting!
    exit 0
fi

exit 0