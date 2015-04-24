FROM alpine:edge

RUN  apk update \
  && apk upgrade \
  && apk add haproxy \
  && rm -rf /var/cache/apk/*

ENV HAPROXY_CONFIG /haproxy/haproxy.cfg

ENTRYPOINT [ "haproxy" ]

CMD [ "-f", "$HAPROXY_CONFIG" ]
