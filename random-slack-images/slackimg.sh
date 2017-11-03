#!/bin/bash
imgpath=/path/to/your/images

sleep $1
/usr/local/bin/slack-cli -d $2 -f ${imgpath}/$(/bin/ls ${imgpath}/ | shuf -n 1)
