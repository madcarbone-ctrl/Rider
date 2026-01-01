FROM frolvlad/alpine-glibc:alpine-3.12

RUN apk add --no-cache openjdk11-jre bash

WORKDIR /app

COPY www/ /app/www/

CMD ["echo", "Ready to build APK"]
