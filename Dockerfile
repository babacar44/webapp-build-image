FROM ubuntu
MAINTAINER babacar44 (babacamara91@gmail.com)
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y git nginx && \
chown -R www-data:www-data /var/lib/nginx
#ADD static-website-example/ /var/www/html/
RUN rm -Rf /var/www/html/*
RUN git clone https://github.com/diranetafen/static-website-example.git /var/www/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
