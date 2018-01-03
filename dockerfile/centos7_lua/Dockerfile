FROM centos:latest

MAINTAINER JellyChenDeveloper 451453325@qq.com

# 更换为阿里云国内源
RUN yum install wget -y && wget http://mirrors.aliyun.com/repo/Centos-7.repo;\
    mv /etc/yum.repos.d/CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo.bak;\
    mv Centos-7.repo /etc/yum.repos.d/CentOS-Base.repo;\
    yum clean all && yum makecache && yum update -y;

# 安装网络工具，ifconfig
RUN yum install net-tools -y && yum clean all

ENV LUA_VERSION 5.3.4

RUN yum install -y make tar unzip gcc gcc-devel openssl-devel readline-devel vim && yum clean all

RUN curl -L http://www.lua.org/ftp/lua-${LUA_VERSION}.tar.gz | tar xzf - && \
    cd /lua-$LUA_VERSION && \
    make linux test && \
    make install && \
    cd .. && rm /lua-$LUA_VERSION -rf

RUN echo "LANG='zh_CN.UTF-8' \
        SYSFONT='latarcyrheb-sun16' \
        SUPPORTED='zh_CN.UTF-8:zh_CN:zh'  //要添加的内容">/etc/locale.conf