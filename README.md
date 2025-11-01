# tinyproxy
A simple HTTP proxy running in docker.

<https://hub.docker.com/r/ha1fdan/tinyproxy>

## Example
compose.yml:
```yaml
services:
  tinyproxy:
    image: ha1fdan/tinyproxy:latest
    container_name: tinyproxy
    ports:
      - "8888:8888"
    environment:
      - PROXY_USER=user
      - PROXY_PASS=userPass123
    restart: always
    dns:
      - 1.1.1.1
      - 1.0.0.1
    healthcheck:
      test: ["CMD", "wget", "-qO-", "http://localhost:8888"]
      interval: 30m
      timeout: 5s
      retries: 3
```
