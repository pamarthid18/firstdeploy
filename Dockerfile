#FROM openjdk:8-jdk-alpine
#VOLUME /tmp
#ARG DEPENDENCY=target/dependency
#COPY ${DEPENDENCY}/BOOT-INF/lib /app/lib
#COPY ${DEPENDENCY}/META-INF /app/META-INF
#COPY ${DEPENDENCY}/BOOT-INF/classes /app
#ENTRYPOINT ["java","-cp","app:app/lib/*","com.first.deploy.firstdeploy.FirstdeployApplication"]


FROM mdsol/java11-jdk
VOLUME /tmp
ARG JAR_FILE=target/firstdeploy-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} firstdeploy.jar
ENTRYPOINT ["java","-jar","/firstdeploy.jar"]