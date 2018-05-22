# 编译命令


## 生成docker镜像

在当前目录执行

docker build -t jelly/ubuntu:14.04 .

## 使用当前镜像


前台启动：

docker run -it -p 10001:22 jelly/ubuntu:14.04 

后台启动：

docker run -d  -p 10002:22 --name ubuntu1 jelly/ubuntu:14.04 
