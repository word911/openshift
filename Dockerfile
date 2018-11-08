FROM alpine:latest
ENV VER=4.2
RUN mkdir -m 777 /v2ray

ADD entrypoint.sh /entrypoint.sh
ADD config.json /config.json
RUN chmod +x /entrypoint.sh 
ENTRYPOINT  /entrypoint.sh 

EXPOSE 8080
