FROM 012629307706.dkr.ecr.us-east-1.amazonaws.com/oracle-jdk8-base:latest
RUN apt-get -y update && apt-get install -y curl

RUN mkdir /opt/tomcat85/ && curl -O https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.59/bin/apache-tomcat-8.5.59.tar.gz && tar xvfz apache*.tar.gz && mv apache-tomcat-8.5.59/* /opt/tomcat85/.

WORKDIR /opt/tomcat85

ADD target/studentscrud-0.0.1-SNAPSHOT.war /opt/tomcat85/webapps/studentscrud-0.0.1-SNAPSHOT.war
ADD scripts/deployment/start.sh start.sh
EXPOSE 8080

CMD ["./start.sh"]