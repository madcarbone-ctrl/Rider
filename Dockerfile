FROM frolvlad/alpine-glibc:alpine-3.12

# Installa le dipendenze minime
RUN apk add --no-cache openjdk11-jre bash

# Crea la cartella di lavoro
WORKDIR /app

# Copia i tuoi file web nella posizione corretta per l'app
COPY www/ /app/www/

# Comando di default (questo serve a far star buono il container durante il build)
CMD ["echo", "Ready to build APK"]
