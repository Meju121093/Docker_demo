FROM java:7-jre
#https://github.com/docker-library/tomcat

ENV CATALINA_HOME /usr/local/tomcat
ENV PATH $CATALINA_HOME/bin:$PATH

RUN mkdir -p "$CATALINA_HOME"
WORKDIR $CATALINA_HOME

ADD ./tomcat $CATALINA_HOME


EXPOSE 8080
CMD ["catalina.sh", "run"]