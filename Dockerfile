FROM centos:latest
MAINTAINER shivuyk1997@gmail.com
RUN mkdir /opt/tomcat/

WORKDIR /opt/tomcat
RUN curl -o https://downloads.apache.org/tomcat/tomcat-9/v9.0.65/bin/apache-tomcat-9.0.65.tar.gz.sha512
RUN tar xvfz apache-tomcat-9.0.65.tar.gz
RUN mv tomcat-9.0.65.tar.gz /opt/tomcat
RUN yum install java -y
RUN java -version
RUN yum update -y

EXPOSE 8080 22

CMD ["/opt/tomcat/bin/catalina.sh", "run"]
