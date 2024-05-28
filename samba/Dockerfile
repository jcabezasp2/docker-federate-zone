FROM ubuntu:latest

ENV DEBIAN_FRONTEND noninteractive

RUN mkdir /custom
ADD init.sh /custom/init.sh
RUN chmod 755 -R /custom
COPY scripts /custom/scripts
COPY config_files /custom/config_files
CMD /custom/init.sh