FROM tomcat:9-jdk8-adoptopenjdk-hotspot
ARG BIMSERVER_WAR
RUN test -n "${BIMSERVER_WAR}"
COPY ${BIMSERVER_WAR} /src/BIMServer.war
COPY ROOT.xml /usr/local/tomcat/conf/Catalina/localhost/ROOT.xml
VOLUME /usr/local/tomcat/webapps
EXPOSE 8080
