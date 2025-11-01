FROM alpine:latest

RUN apk add --no-cache tinyproxy

# Copy config
COPY tinyproxy.conf /etc/tinyproxy/tinyproxy.conf

EXPOSE 8888

CMD sed -i "s|__USER__|${PROXY_USER}|g" /etc/tinyproxy/tinyproxy.conf && \
    sed -i "s|__PASS__|${PROXY_PASS}|g" /etc/tinyproxy/tinyproxy.conf && \
    tinyproxy -d
