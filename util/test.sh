#!/bin/bash

#sed 命令使用 sed 命令行格式为： sed [选项] ‘ command’ 输入文本    & 用法需要关注  ,行范围  1～5  行跨度 -e 命令是编辑命令  获取下一行： n 命令 
#转换： y，命令 退出： q 命令 {} 执行命令组
#参考地址 https://www.cnblogs.com/ginvip/p/6376049.html
# sed -n **.txt #只打印处理行信息
# sed -e **.txt #多重编辑，且命令顺序会影响结果
# -f 执行脚本文件 -r 使用扩展正则 -i 直接操作文件

#awk 命令使用 http://wangchujiang.com/linux-command/c/awk.html
# awk [options] 'script' var=value file(s)
# awk [options] -f scriptfile var=value file(s)

# 常用命令选项

# -F fs fs指定输入分隔符，fs可以是字符串或正则表达式，如-F:
# -v var=value 赋值一个用户定义变量，将外部变量传递给awk
# -f scripfile 从脚本文件中读取awk命令
# -m[fr] val 对val值设置内在限制，-mf选项限制分配给val的最大块数目；-mr选项限制记录的最大数目。这两个功能是Bell实验室版awk的扩展功能，在标准awk中不适用。

# awk的工作原理

# awk 'BEGIN{ commands } pattern{ commands } END{ commands }'
# 第一步：执行BEGIN{ commands }语句块中的语句；
# 第二步：从文件或标准输入(stdin)读取一行，然后执行pattern{ commands }语句块，它逐行扫描文件，从第一行到最后一行重复这个过程，直到文件全部被读取完毕。
# 第三步：当读至输入流末尾时，执行END{ commands }语句块。
# next，就会跳过当前行

#find 命令使用 find(选项)(参数)
# -print0 参数表示find输出的每条结果后面加上 '\0' 而不是换行

# -amin<分钟>：查找在指定时间曾被存取过的文件或目录，单位以分钟计算；
# -anewer<参考文件或目录>：查找其存取时间较指定文件或目录的存取时间更接近现在的文件或目录；
# -atime<24小时数>：查找在指定时间曾被存取过的文件或目录，单位以24小时计算；
# -cmin<分钟>：查找在指定时间之时被更改过的文件或目录；
# -cnewer<参考文件或目录>查找其更改时间较指定文件或目录的更改时间更接近现在的文件或目录；
# -ctime<24小时数>：查找在指定时间之时被更改的文件或目录，单位以24小时计算；
# -daystart：从本日开始计算时间；
# -depth：从指定目录下最深层的子目录开始查找；
# -expty：寻找文件大小为0 Byte的文件，或目录下没有任何子目录或文件的空目录；
# -exec<执行指令>：假设find指令的回传值为True，就执行该指令；
# -false：将find指令的回传值皆设为False；
# -fls<列表文件>：此参数的效果和指定“-ls”参数类似，但会把结果保存为指定的列表文件；
# -follow：排除符号连接；
# -fprint<列表文件>：此参数的效果和指定“-print”参数类似，但会把结果保存成指定的列表文件；
# -fprint0<列表文件>：此参数的效果和指定“-print0”参数类似，但会把结果保存成指定的列表文件；
# -fprintf<列表文件><输出格式>：此参数的效果和指定“-printf”参数类似，但会把结果保存成指定的列表文件；
# -fstype<文件系统类型>：只寻找该文件系统类型下的文件或目录；
# -gid<群组识别码>：查找符合指定之群组识别码的文件或目录；
# -group<群组名称>：查找符合指定之群组名称的文件或目录；
# -help或——help：在线帮助；
# -ilname<范本样式>：此参数的效果和指定“-lname”参数类似，但忽略字符大小写的差别；
# -iname<范本样式>：此参数的效果和指定“-name”参数类似，但忽略字符大小写的差别；
# -inum<inode编号>：查找符合指定的inode编号的文件或目录；
# -ipath<范本样式>：此参数的效果和指定“-path”参数类似，但忽略字符大小写的差别；
# -iregex<范本样式>：此参数的效果和指定“-regexe”参数类似，但忽略字符大小写的差别；
# -links<连接数目>：查找符合指定的硬连接数目的文件或目录；
# -iname<范本样式>：指定字符串作为寻找符号连接的范本样式；
# -ls：假设find指令的回传值为Ture，就将文件或目录名称列出到标准输出；
# -maxdepth<目录层级>：设置最大目录层级；
# -mindepth<目录层级>：设置最小目录层级；
# -mmin<分钟>：查找在指定时间曾被更改过的文件或目录，单位以分钟计算；
# -mount：此参数的效果和指定“-xdev”相同；
# -mtime<24小时数>：查找在指定时间曾被更改过的文件或目录，单位以24小时计算；
# -name<范本样式>：指定字符串作为寻找文件或目录的范本样式；
# -newer<参考文件或目录>：查找其更改时间较指定文件或目录的更改时间更接近现在的文件或目录；
# -nogroup：找出不属于本地主机群组识别码的文件或目录；
# -noleaf：不去考虑目录至少需拥有两个硬连接存在；
# -nouser：找出不属于本地主机用户识别码的文件或目录；
# -ok<执行指令>：此参数的效果和指定“-exec”类似，但在执行指令之前会先询问用户，若回答“y”或“Y”，则放弃执行命令；
# -path<范本样式>：指定字符串作为寻找目录的范本样式；
# -perm<权限数值>：查找符合指定的权限数值的文件或目录；
# -print：假设find指令的回传值为Ture，就将文件或目录名称列出到标准输出。格式为每列一个名称，每个名称前皆有“./”字符串；
# -print0：假设find指令的回传值为Ture，就将文件或目录名称列出到标准输出。格式为全部的名称皆在同一行；
# -printf<输出格式>：假设find指令的回传值为Ture，就将文件或目录名称列出到标准输出。格式可以自行指定；
# -prune：不寻找字符串作为寻找文件或目录的范本样式;
# -regex<范本样式>：指定字符串作为寻找文件或目录的范本样式；
# -size<文件大小>：查找符合指定的文件大小的文件；
# -true：将find指令的回传值皆设为True；
# -typ<文件类型>：只寻找符合指定的文件类型的文件；
# -uid<用户识别码>：查找符合指定的用户识别码的文件或目录；
# -used<日数>：查找文件或目录被更改之后在指定时间曾被存取过的文件或目录，单位以日计算；
# -user<拥有者名称>：查找符和指定的拥有者名称的文件或目录；
# -version或——version：显示版本信息；
# -xdev：将范围局限在先行的文件系统中；
# -xtype<文件类型>：此参数的效果和指定“-type”参数类似，差别在于它针对符号连接检查。

# printf 命令  格式化显示内容

# shell中各种括号的作用()、(())、[]、[[]]、{}
# https://blog.csdn.net/taiyang1987912/article/details/39551385

#if 使用学习  (if)  (if else) (if else-if else)   

#func 写函数 其它文件需要 source引入 return 返回，如果不加，将以最后一条命令运行结果，作为返回值
# [ function ] funname [()]

# {

#     action;

#     [return int;]

# }

# $#	传递到脚本的参数个数
# $*	以一个单字符串显示所有向脚本传递的参数
# $$	脚本运行的当前进程ID号
# $!	后台运行的最后一个进程的ID号
# $@	与$*相同，但是使用时加引号，并在引号中返回每个参数。
# $-	显示Shell使用的当前选项，与set命令功能相同。
# $?	显示最后命令的退出状态。0表示没有错误，其他任何值表明有错误。


#xargs -n选项 多行输出： xargs -n 3  
#-d选项 可以自定义一个定界符： echo "nameXnameXnameXname" | xargs -dX
# 选项-I ，使用-I指定一个替换字符串{}
#xargs -0将\0作为定界符。

#-p 选项 执行前确认
# -E 选项 只执行 -E 'c' c 之前的数据
# xargs的 -0 和 -d '\0' 表示其从标准输入中读取的内容使用 '\0' 来分割


# - 代表标准输入


# case 
# 	1、*) 相当于其他语言中的default。

#             2、除了*)模式，各个分支中;;是必须的，;;相当于其他语言中的break

#             3、 | 分割多个模式，相当于or
