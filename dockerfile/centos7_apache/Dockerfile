# This dockerfile is base on centos image
# VERSION 1 - EDITION 1
# Author: JellyChenDeveloper
# Command format: Instruction [arguments / command] ..

# Base image to use.
FROM centos:latest

MAINTAINER JellyChenDeveloper 451453325@qq.com


# 更换为阿里云国内源
RUN yum install wget -y && wget http://mirrors.aliyun.com/repo/Centos-7.repo;\
	mv /etc/yum.repos.d/CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo.bak;\
	mv Centos-7.repo /etc/yum.repos.d/CentOS-Base.repo;\
	yum clean all && yum makecache && yum update -y;

RUN \
# 安装网络工具，ifconfig
	yum install net-tools -y;\
	\
# 安装apache
	yum install httpd -y;

#设置conf文件中的ServerName
#RUN echo "ServerName localhost:80">>/etc/httpd/conf/httpd.conf;
RUN sed -i '/ServerName www.example.com/s/^#//' /etc/httpd/conf/httpd.conf;\
	sed -i 's/ServerName www.example.com/ServerName localhost/g' /etc/httpd/conf/httpd.conf;

# 设置开机启动
RUN systemctl enable httpd.service

ADD run.sh /run.sh
RUN chmod 777 /run.sh

EXPOSE 80

# RUN httpd
CMD ["/run.sh"]