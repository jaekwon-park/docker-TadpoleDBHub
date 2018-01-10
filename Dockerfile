#
# original source : https://hub.docker.com/r/library/tomcat/
#	2016.10.31 - updated 
#
FROM tomcat:8.5.24-alpine
MAINTAINER Jaekwon Park <jaekwon.park@oepnstack.computer>

# tadpole resource
RUN apk add curl &&  curl -fsSL https://sourceforge.net/projects/tadpoledbhub/files/1.7.x/1.7.4/tadpole.war -o /usr/local/tomcat/webapps/ROOT.war \
    && apk del curl && apk cache clean

EXPOSE 8080
CMD ["catalina.sh", "run"]
