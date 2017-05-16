FROM alpine:3.5

EXPOSE 8123
CMD ["/usr/sbin/privoxy", "--no-daemon"]

RUN apk --update add privoxy && \
    rm -rf /var/cache/*

ADD config /etc/privoxy/config

USER privoxy
WORKDIR /etc/privoxy
