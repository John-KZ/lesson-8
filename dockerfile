FROM tomcat
RUN apt-get update
WORKDIR /usr/local/tomcat/webapps/
RUN rm -rf ./*
COPY hello-1.0.war ./ROOT.war
EXPOSE 8080
CMD ["catalina.sh", "run"]

