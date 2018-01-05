# Develop docker images of Jelly 

## Basic images

### centos6
* [`centos6` (centos6/Dockerfile)](https://github.com/JellyChenDeveloper/dockerfile/blob/master/base/centos6/Dockerfile)

#### ChangeList
1. Change to Ali repo source. (设为阿里源)
1. Install `net-tools`,`vim`,`wget`
1. Set timezone to `Asia/Shanghai`(设置系统时间为中国时区) **`(:TODO)`**

### centos7 
* [`centos7` (centos7/Dockerfile)](https://github.com/JellyChenDeveloper/dockerfile/blob/master/base/centos7/Dockerfile)

#### ChangeList
1. Change to Ali repo source. (设为阿里源)
1. Install `net-tools`,`vim`,`wget`,`supervisord`,`nginx`
1. Set timezone to `Asia/Shanghai`(设置系统时间为中国时区)

### ubuntu14
* [`ubuntu14`,`ubuntu_14.04` (ubuntu14/Dockerfile)](https://github.com/JellyChenDeveloper/dockerfile/blob/master/base/ubuntu14/Dockerfile)

#### ChangeList
1. Change to Ali repo source. (设为阿里源)
1. Install `vim`,`supervisord`
1. Set timezone to `Asia/Shanghai`(设置系统时间为中国时区) **`(:TODO)`**