if [ `whoami` = "{{ hadoop_user }}" ]; then
  export LD_LIBRARY_PATH=$JAVA_HOME/jre/lib/amd64/server:/opt/hadoop/lib/native/:$JAVA_HOME/jre/lib/amd64/server/
  export CLASSPATH=$(/opt/hadoop/bin/hadoop classpath | sed s/:/'\n'/g | awk '/\*$/ {print "ls", $0 ".jar"}' | sh | sed ':a;N;$!ba;s/\n/:/g')
  export PATH=$PATH:/opt/hadoop/bin:/opt/hadoop/sbin
fi