#!/bin/bash

usage() {
	echo "USAGE: $0 python | $0 java | $0 html "
	exit 1
}

if [ $# -eq 2 ];then
	usage
	exit 1
fi

case "$#" in 
	2)
    	echo 2
	;;
	1)
		echo 1
	;;
	*)
		echo 'default'
	;;
esac

