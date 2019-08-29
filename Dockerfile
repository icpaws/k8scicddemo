FROM nginx:1.14

COPY index.html /usr/share/nginx/html/index.html

# set maintainer
LABEL maintainer "icpaws@outlook.comm"

# set a health check
HEALTHCHECK --interval=5s \
            --timeout=5s \
            CMD curl -f http://127.0.0.1:80 || exit 1

# tell docker what port to expose
EXPOSE 80
