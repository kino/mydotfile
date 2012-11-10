JAVA_HOME=/usr/lib/jvm/java-1.6.0-openjdk
CLASSPATH=.:$JAVA_HOME/lib/tools.jar:$JAVA_HOME/jre/lib/rt.jar

M2_HOME=/opt/apache-maven-3.0.3
PATH=$PATH:$JAVA_HOME/bin:$M2_HOME/bin
PATH=$PATH:/opt/android-sdk/tools:/opt/android-sdk/platform-tools
export JAVA_HOME CLASSPATH M2_HOME PATH

