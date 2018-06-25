#!/bin/bash

#发布脚本模版

#获取执行脚本的目录
DIR=$(cd "$(dirname "$0")";pwd) 
echo $DIR

declare -A map=(["sunjun"]="a" ["jason"]="b" ["lee"]="c")

usage() {
	echo "USAGE: $0 python | $0 java | $0 html "
	exit 1
}

if [ $# -lt 1 ];then
	usage
	exit 1
fi

#打包忽略文件
excludes = (*.php, *.pyc)

#预处理
pre() {
	#执行 git 下载最新内容 检查是否安装npm等
	echo '拉取新代码'
	git pull
	if [ $? != 0 ]; then
		echo '获取最新代码出错'
		exit 1
	fi
	echo '检查npm 是否安装'
	npm -version
	if [ $? != 0 ]; then
		echo 'npm 未安装,需检查'
		exit 1
	fi
}

#编译
build() {
	echo "begin $FUNCNAME"
	echo "end $FUNCNAME"
}

#打包
db() {
	echo "begin $FUNCNAME"
	echo "end $FUNCNAME"
}

#清理
clear_tmp() {
	echo "begin $FUNCNAME"
	echo "end $FUNCNAME"
}

#发包
dp_server() {
	echo "begin $FUNCNAME"
	echo "end $FUNCNAME"
}

#发布执行
pre
if [ $? != 0 ];then
	echo 'pre error'
	exit 1 
fi

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