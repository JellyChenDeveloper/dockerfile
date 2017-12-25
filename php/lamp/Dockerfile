# This dockerfile is base on centos image
# VERSION 1 - EDITION 1
# Author: JellyChenDeveloper
# Command format: Instruction [arguments / command] ..

# Base image to use.
FROM centos:6

MAINTAINER JellyChenDeveloper 451453325@qq.com


# 更换为阿里云国内源
RUN yum install wget -y && wget http://mirrors.aliyun.com/repo/Centos-6.repo;\
	mv /etc/yum.repos.d/CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo.bak;\
	mv Centos-6.repo /etc/yum.repos.d/CentOS-Base.repo;\
	yum clean all && yum makecache && yum update -y;

# install ifconfig
RUN yum install net-tools -y;

# install apache
RUN yum install httpd -y;
# install mysql
RUN yum install -y mysql mysql-server
RUN echo "NETWORKING=yes" > /etc/sysconfig/network

# install php
RUN rpm -Uvh http://ftp.iij.ad.jp/pub/linux/fedora/epel/6/x86_64/epel-release-6-8.noarch.rpm;\
	rpm -Uvh http://rpms.famillecollet.com/enterprise/remi-release-6.rpm
RUN yum install -y --enablerepo=remi --enablerepo=remi-php56 php php-opcache php-devel php-mbstring php-mcrypt php-mysqlnd php-phpunit-PHPUnit php-pecl-xdebug php-pecl-xhprof php-pecl-mongo php-pecl-mongo php56-php-pecl-redis

# install supervisord
# RUN yum install -y python-pip && pip install "pip>=1.4,<1.5" --upgrade
RUN yum install -y supervisor

# install sshd
RUN yum install -y openssh-server openssh-clients passwd
# install vim
RUN yum install -y vim


# Configs
# ssh config
RUN ssh-keygen -q -N "" -t dsa -f /etc/ssh/ssh_host_dsa_key && ssh-keygen -q -N "" -t rsa -f /etc/ssh/ssh_host_rsa_key 
RUN sed -ri 's/UsePAM yes/UsePAM no/g' /etc/ssh/sshd_config && echo 'root:changeme' | chpasswd

# Put your own public key at id_rsa.pub for key-based login.
RUN mkdir -p /root/.ssh && touch /root/.ssh/authorized_keys && chmod 700 /root/.ssh
#ADD id_rsa.pub /root/.ssh/authorized_keys

# start mysqld to create initial tables
# RUN service mysqld start


# config apache
RUN sed -i '/ServerName www.example.com/s/^#//' /etc/httpd/conf/httpd.conf;\
	sed -i 's/ServerName www.example.com/ServerName localhost/g' /etc/httpd/conf/httpd.conf;

ADD index.php /var/www/html/
ADD supervisord.conf /etc/
EXPOSE 22 80 443 3306 9001

ADD run.sh /run.sh
RUN chmod 777 /run.sh

# RUN
CMD ["/run.sh"]




