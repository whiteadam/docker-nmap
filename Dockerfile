FROM alpine:3.4
MAINTAINER Adam White <adam@whiteadam.com>

RUN apk add nmap nmap-scripts nmap-ncat nmap-nping nmap-nselibs --no-cache
COPY entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]

CMD ["nmap"]
