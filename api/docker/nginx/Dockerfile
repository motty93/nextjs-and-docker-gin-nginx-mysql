FROM nginx:latest

RUN rm -f /etc/nginx/conf.d/*
COPY ./conf.d/golang.conf /etc/nginx/conf.d/golang.conf
COPY nginx.conf /etc/nginx/nginx.conf
EXPOSE 80

CMD nginx -g 'daemon off;' -c /etc/nginx/nginx.conf
