FROM tomcat:9-jdk15-adoptopenjdk-hotspot
ARG BIMSERVER_WAR
ENV _JAVA_OPTIONS="-XX:MaxRAMPercentage=75.0"
RUN apt-get update && apt-get install -y wget
RUN mkdir /var/www/localhost -p
RUN mkdir /var/bimserver/home -p
ADD ${BIMSERVER_WAR} /var/www/localhost/ROOT.war
ADD server.xml /usr/local/tomcat/conf/server.xml
VOLUME /var/bimserver/home
EXPOSE 8080