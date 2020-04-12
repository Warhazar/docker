FROM openjdk:14-jdk-oracle

RUN yum -y update && yum -y install git && yum -y install git maven
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git /home/lab1
RUN cd /home/lab1
RUN mvn package
ADD /home/lab1/target/hello-1.0.war /var/lib/tomcat8/webapps/
RUN service tomcat8 restart
