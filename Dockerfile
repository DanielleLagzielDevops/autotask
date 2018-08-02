FROM tomcat
MAINTAINER xyz

ADD ./time-tracker-web-0.3.1.war /usr/local/tomcat/webapps/

CMD ["catalina.sh", "run"]
