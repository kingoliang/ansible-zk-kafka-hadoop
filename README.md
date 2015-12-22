# ansible-kafka

## 用途
在CentOS上安装zookeeper和kafka。

## 说明
  ansible的hosts文件中需要有zk、kafka两个分组。默认会在所有的机器上安装jdk8，如果不需要在所有机器上安装JDK8，那么需要自己改一下site.yml，所all换成想安装JDK的主机分组。例子见[hosts.example](https://github.com/kingoliang/ansible-kafka/blob/master/hosts.example)

## 使用方法
1、git clone https://github.com/kingoliang/ansible-kafka
2、修改/etc/ansible/hosts文件。格式见上面的说明。
3、ansible-playbook site.yml

