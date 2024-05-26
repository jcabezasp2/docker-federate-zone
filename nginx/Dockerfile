FROM nginx:1.22

RUN apt-get update && \
    apt-get install -y \
    nginx-extras \
    libnginx-mod-http-ndk \
    modsecurity-crs

COPY ./default.conf /etc/nginx/conf.d/default.conf
COPY modsec.conf /etc/nginx/modsec/modsecurity.conf
COPY nginx.conf /etc/nginx/nginx.conf