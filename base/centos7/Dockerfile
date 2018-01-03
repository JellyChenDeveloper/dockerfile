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
	mv Centos-7.repo /etc/yum.repos.d/CentOS-Base.repo; && \
	yum update -y && yum clean all
	# 安装 net-tools vim
RUN yum install -y net-tools vim && yum clean all