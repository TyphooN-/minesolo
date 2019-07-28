#!/bin/sh

screen -list | grep "miner" && status=true || status=false

if [ $status = true ]
 then
    echo "Miner is alive."
 else
   echo "Miner is dead, but will be launched."
   screen -dmS miner -L ./solod --start-mining SL2gAnth5edEiLTzW5apwqFGFbgBtZBskafpXkCbDVyKU7VKWxFQvvaXXBGj3QsrPGj9dDacgG1fXdoBBWn6Fmtq1VT8MxkMC --mining-threads 8
   screen -S miner -X multiuser on
fi

exit 0