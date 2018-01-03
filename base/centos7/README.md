# centos7 阿里源镜像

## 阿里源
```
yum install wget -y && wget http://mirrors.aliyun.com/repo/Centos-7.repo
mv /etc/yum.repos.d/CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo.bak
mv Centos-7.repo /etc/yum.repos.d/CentOS-Base.repo
yum update -y && yum clean all
```

## 安装的软件
```
yum install -y net-tools vim && yum clean all
```
