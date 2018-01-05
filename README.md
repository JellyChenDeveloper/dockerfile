# 自己搭建的Docker镜像

## 基础镜像

### centos6
* [`centos6` (centos6/Dockerfile)](https://github.com/JellyChenDeveloper/dockerfile/blob/master/base/centos6/Dockerfile)

#### ChangeList
1. 更新阿里源
1. 安装`net-tools`,`vim`,`wget`
1. 设置为中国时区`(TODO)`

### centos7 
* [`centos7` (centos7/Dockerfile)](https://github.com/JellyChenDeveloper/dockerfile/blob/master/base/centos7/Dockerfile)

#### ChangeList
1. 更新阿里源
1. 安装`net-tools`,`vim`,`wget`,`supervisord`,`nginx`
1. 设置为中国时区


### ubuntu14
* [`ubuntu14`,`ubuntu_14.04` (ubuntu14/Dockerfile)](https://github.com/JellyChenDeveloper/dockerfile/blob/master/base/ubuntu14/Dockerfile)

#### ChangeList
1. 更新阿里源
1. 安装`vim`,`supervisord`
1. 设置为中国时区`(TODO)`