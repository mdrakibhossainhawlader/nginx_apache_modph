#!/bin/bash

D=$(date +%H:%M)
H=$(date +%H)
M=$(date +%M)
Z=$(($H * $M))
broApp=$(curl https://app.bitpool.com/#/login?pane=organisation  | grep bpoAppVersion | sed s/[^0-9]//g)

        echo "time:             $D"
        echo "bpoAppVersion:     $broApp"

if (( "$Z" > "$broApp" ))
    then
        echo "result:   $Z > $broApp"
    else
        echo "result:   $Z < $broApp"
fi
