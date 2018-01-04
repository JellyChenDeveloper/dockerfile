# This dockerfile is base on centos image
# VERSION 1 - EDITION 1
# Author: JellyChenDeveloper
# Command format: Instruction [arguments / command] ..

# Base image to use.
FROM centos:latest

MAINTAINER JellyChenDeveloper 451453325@qq.com


# 更新阿里源
RUN mv /etc/yum.repos.d/CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo.bak
ADD Centos-7.repo /etc/yum.repos.d/CentOS-Base.repo
ADD nginx.repo /etc/yum.repos.d/nginx.repo

# RUN yum update -y && yum clean all

# 安装 net-tools vim
RUN yum install -y net-tools vim wget \
	&& yum clean all
RUN yum install -y nginx \
	&& yum clean all
RUN yum install -y python-setuptools\
	&& yum clean all
RUN easy_install supervisor

ADD supervisord.conf /etc/supervisord.conf

EXPOSE 80 9001

CMD ["supervisord"]