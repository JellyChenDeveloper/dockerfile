# This dockerfile is base on ubuntu image
# VERSION 1 - EDITION 1
# Author: JellyChenDeveloper
# Command format: Instruction [arguments / command] ..

# Base image to use.
FROM ubuntu:14.04

MAINTAINER JellyChenDeveloper 451453325@qq.com

RUN cp /etc/apt/sources.list /etc/apt/sources.list.bak && \
	echo "deb http://mirrors.aliyun.com/ubuntu/ trusty main restricted universe multiverse\n\
	deb http://mirrors.aliyun.com/ubuntu/ trusty-security main restricted universe multiverse\n\
	deb http://mirrors.aliyun.com/ubuntu/ trusty-updates main restricted universe multiverse\n\
	deb http://mirrors.aliyun.com/ubuntu/ trusty-proposed main restricted universe multiverse\n\
	deb http://mirrors.aliyun.com/ubuntu/ trusty-backports main restricted universe multiverse\n\
	deb-src http://mirrors.aliyun.com/ubuntu/ trusty main restricted universe multiverse\n\
	deb-src http://mirrors.aliyun.com/ubuntu/ trusty-security main restricted universe multiverse\n\
	deb-src http://mirrors.aliyun.com/ubuntu/ trusty-updates main restricted universe multiverse\n\
	deb-src http://mirrors.aliyun.com/ubuntu/ trusty-proposed main restricted universe multiverse\n\
	deb-src http://mirrors.aliyun.com/ubuntu/ trusty-backports main restricted universe multiverse">/etc/apt/sources.list && \
	apt-get update && \
	apt-get clean && \
	rm -rf /var/lib/apt/lists/*
