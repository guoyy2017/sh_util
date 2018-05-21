#!/bin/bash

#发布脚本模版s

usage() {
	echo "USAGE: $0 python | $0 java | $0 html "
	exit 1
}

if [ $# -lt 1 ];then
	usage
	exit 1
fi

#编译
build() {

}

#打包
db() {

}

#清理
clear_tmp() {

}

#发包
dp_server() {

}

build
if [ $? != 0 ];then
	echo 'build error'
	exit 1 
fi

db
if [ $? != 0 ];then
	echo 'db error'
	exit 1 
fi

clear_tmp
if [ $? != 0 ];then
	echo 'clear_tmp error'
	exit 1 
fi

dp_server
if [ $? != 0 ];then
	echo 'dp_server error'
	exit 1 
fi