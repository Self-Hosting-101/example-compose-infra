FROM alpine:latest

COPY ./geoip-info.json /geoip-info.json
COPY ./init-elastic.sh /init-elastic.sh

RUN chmod +x /init-elastic.sh

RUN apk add --no-cache curl

ENTRYPOINT [ "/init-elastic.sh" ]
