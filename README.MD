shell 文件启动方式
1. 使用shell 脚本启动 
sh **.sh
2. 授权可执行 chmod +x **.sh
./**.sh
3. 如果文件内使用了 #!/usr/bin/env python | #!/usr/bin/env expect
只能使用2的方式启动，否则会有问题

需要引入文件内方法 执行 source 命令引入文件