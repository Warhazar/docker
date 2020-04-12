FROM tomcat
RUN apt-get -y update
RUN apt-get -y install maven
RUN apt-get -y install git
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git /home/lab1
RUN cd /home/lab1 && mvn package && cp /home/lab1/target/hello-1.0.war /usr/local/tomcat/webapps/
