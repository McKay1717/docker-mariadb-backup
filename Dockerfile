FROM tiredofit/alpine:edge
MAINTAINER Dave Conroy <dave at tiredofit dot ca>

### Dependencies
   RUN apk update && \
       apk add \
       	   mysql-client \
    	   bzip2 \  
    	   xz && \
       rm -rf /var/cache/apk/* 

### S6 Setup
   ADD install/s6 /etc/s6

### Entrypoint Configuration  
   ENTRYPOINT ["/init"]

