FROM ubuntu:16.04

LABEL maintainer="Dai Pham"

RUN apt-get update \
    && apt-get install -y nginx \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

COPY nginx.conf /etc/nginx/conf.d
COPY ./ssl/daohuytuan/fullchain.pem /etc/letsencrypt/live/daohuytuan.com/fullchain.pem
COPY ./ssl/daipham/fullchain.pem /etc/letsencrypt/live/daipham.xyz/fullchain.pem
COPY ./ssl/daohuytuan/privkey.pem /etc/letsencrypt/live/daohuytuan.com/privkey.pem
COPY ./ssl/daipham/privkey.pem /etc/letsencrypt/live/daipham.xyz/privkey.pem

EXPOSE 80
EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]