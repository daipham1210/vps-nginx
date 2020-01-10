FROM nginx:mainline-alpine
COPY nginx.conf /etc/nginx/conf.d
COPY ./ssl/daohuytuan/fullchain.pem /etc/letsencrypt/live/daohuytuan.com/fullchain.pem
COPY ./ssl/daipham/fullchain.pem /etc/letsencrypt/live/daipham.xyz/fullchain.pem
COPY ./ssl/daohuytuan/privkey.pem /etc/letsencrypt/live/daohuytuan.com/privkey.pem
COPY ./ssl/daipham/privkey.pem /etc/letsencrypt/live/daipham.xyz/privkey.pem
EXPOSE 80/tcp
EXPOSE 443/tcp