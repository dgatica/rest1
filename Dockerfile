 FROM centos
 RUN yum install -y java
 VOLUME /tmp
 ADD demo1.jar app.jar
 RUN sh -c 'touch /app.jar'
 ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
