FROM openjdk:8-jre-alpine

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories \
    && apk add --no-cache bash curl

WORKDIR /app

COPY target/fastjson-rce-env-1.0.0.jar /app/app.jar

EXPOSE 18080

ENTRYPOINT ["java", "-jar", "/app/app.jar"]
