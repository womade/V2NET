FROM alpine:latest
ENV TZ=Asia/Shanghai
RUN apk add --no-cache --virtual .build-deps ca-certificates curl
COPY configure.sh /configure.sh
RUN chmod +x /configure.sh
ENTRYPOINT ["sh", "-c", "/configure.sh"]