# ansible JDK8 Zookeeper Kafka Hadoop(HDFS)

## 用途
在CentOS上安装zookeeper、kafka和Hadoop(HDFS)。

## 说明
  ansible的hosts文件中需要有zk、kafka、hadoop（详见hosts.example）等分组。默认会在所有的机器上安装jdk8，如果不需要在所有机器上安装JDK8，那么需要自己改一下site.yml，所all换成想安装JDK的主机分组。例子见[hosts.example](https://github.com/kingoliang/ansible-zk-kafka-hadoop/blob/master/hosts.example)

## 使用方法
  1、git clone https://github.com/kingoliang/ansible-zk-kafka-hadoop

  2、修改/etc/ansible/hosts文件。格式见上面的说明。
  
  3、只安装JDK8

    - ansible-playbook site.yml --tags java8
  
    只安装zookeeper
  
    - ansible-playbook site.yml --tags zk    
  
    只安装kafka
  
    - ansible-playbook site.yml --tags kafka
  
    只安装hadoop
  
    - ansible-playbook site.yml --tags hadoop
  
    组合安装：
  
    - ansible-playbook site.yml --tags java8,zk,kafka,hadoop
  
    全部安装：
  
    - ansible-playbook site.yml 

    清空所有安装的软件和数据：

    - ansible-playbook clean.yml
    

