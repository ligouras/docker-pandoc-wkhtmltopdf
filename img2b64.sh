#!/bin/bash

if [ ! -z "$1" ] && [ -f "$1" ] ; then
	ext="${1##*.}"

	if [ "$ext" == "jpg" ] || [ "$ext" == "jpeg" ] || [ "$ext" == "gif" ] || [ "$ext" == "png" ]; then
		echo "data:image/$ext;base64,$(base64 -w0 $1)"
	else
		echo "$1"
	fi
else
	echo "$1"
fi
