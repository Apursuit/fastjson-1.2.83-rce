FROM openjdk:8-jre-alpine
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.tuna.tsinghua.edu.cn/g' /etc/apk/repositories \
    && apk add --no-cache bash
WORKDIR /app

COPY target/fastjson-rce-env-1.0.0.jar /app/app.jar

EXPOSE 18080

ENTRYPOINT ["java", "-jar", "/app/app.jar"]
