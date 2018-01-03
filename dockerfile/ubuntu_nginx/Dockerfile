FROM ubuntu:14.04
MAINTAINER docker_user_jelly (451453325@qq.com)

# 切换阿里镜像
RUN cp /etc/apt/sources.list /etc/apt/sources.list.bak;\
echo "deb http://mirrors.aliyun.com/ubuntu/ trusty main restricted universe multiverse\n\
deb http://mirrors.aliyun.com/ubuntu/ trusty-security main restricted universe multiverse\n\
deb http://mirrors.aliyun.com/ubuntu/ trusty-updates main restricted universe multiverse\n\
deb http://mirrors.aliyun.com/ubuntu/ trusty-proposed main restricted universe multiverse\n\
deb http://mirrors.aliyun.com/ubuntu/ trusty-backports main restricted universe multiverse\n\
deb-src http://mirrors.aliyun.com/ubuntu/ trusty main restricted universe multiverse\n\
deb-src http://mirrors.aliyun.com/ubuntu/ trusty-security main restricted universe multiverse\n\
deb-src http://mirrors.aliyun.com/ubuntu/ trusty-updates main restricted universe multiverse\n\
deb-src http://mirrors.aliyun.com/ubuntu/ trusty-proposed main restricted universe multiverse\n\
deb-src http://mirrors.aliyun.com/ubuntu/ trusty-backports main restricted universe multiverse">/etc/apt/sources.list;

RUN apt-get update && apt-get -y upgrade

# 安装SSH
RUN apt-get install -y openssh-server
RUN mkdir -p /var/run/sshd;\
mkdir -p /root/.ssh/;\
sed -ri 's/session  required pam_loginuid.so/#session  required pam_loginuid.so/g' /etc/pam.d/sshd;\
touch /root/.ssh/authorized_keys

# 安装nginx
RUN apt-get install -y nginx

# 安装php
RUN apt-get install -y php5-fpm php5-mysql
# 安装mysql-client
RUN apt-get install -y mysql-client

ADD run.sh /run.sh
RUN chmod +x /run.sh

EXPOSE 22 80

CMD ["/run.sh"]
