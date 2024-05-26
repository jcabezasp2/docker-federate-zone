FROM nginx:latest

RUN apt-get update && \
    apt-get install -y \
    libnginx-mod-http-modsecurity \
    modsecurity-crs

COPY ./default.conf /etc/nginx/conf.d/default.conf
COPY modsec.conf /etc/nginx/modsec/modsecurity.conf
COPY nginx.conf /etc/nginx/nginx.conf