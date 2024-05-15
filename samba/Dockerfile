FROM ubuntu:latest

ENV DEBIAN_FRONTEND noninteractive

# RUN \
#     apt-get update &&\
#     apt-get install -y \
#         pkg-config \
#         attr \
#         acl \
#         samba \
#         smbclient \
#         ldap-utils \
#         winbind \
#         libnss-winbind \
#         libpam-winbind \
#         krb5-user \
#         krb5-kdc \
#         supervisor \
#         openvpn \
#         inetutils-ping \
#         ldb-tools \
#         vim \
#         curl \
#         dnsutils \
#         ntp &&\
#     apt-get clean autoclean &&\
#     apt-get autoremove --yes &&\
#     rm -rf /var/lib/{apt,dpkg,cache,log}/ &&\
#     rm -fr /tmp/* /var/tmp/*

# VOLUME [ "/var/lib/samba", "/etc/samba/external" ]

RUN mkdir /custom
ADD init.sh /custom/init.sh
RUN chmod 755 -R /custom
COPY scripts /custom/scripts
COPY config_files /custom/config_files
CMD /custom/init.sh