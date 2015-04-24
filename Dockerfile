FROM alpine:edge

RUN  apk update \
  && apk upgrade \
  && apk add haproxy \
  && rm -rf /var/cache/apk/*

ENTRYPOINT [ "haproxy" ]

CMD [ "-f", "/haproxy/haproxy.cfg" ]
