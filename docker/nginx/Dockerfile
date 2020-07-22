FROM nginx:latest

RUN rm -f /etc/nginx/conf.d/*
# COPY ./conf.d/golang.conf /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/nginx.conf
EXPOSE 8020
