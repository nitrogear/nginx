#
# Nginx Dockerfile
#
# https://github.com/nitrogear/nginx
#

# Pull base image.
FROM ubuntu:16.04

# Install Nginx.
RUN \
  echo "deb http://ppa.launchpad.net/nginx/stable/ubuntu xenial main" >/etc/apt/sources.list.d/nginx-ubuntu-stable-xenial.list && \
  apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 00A6F0A3C300EE8C && \
  apt-get update && \
  apt-get install -y nginx && \
  rm -rf /var/lib/apt/lists/* && \
  echo "\ndaemon off;" >> /etc/nginx/nginx.conf && \
  chown -R www-data:www-data /var/lib/nginx

# Define mountable directories.
VOLUME ["/etc/nginx/sites-enabled", "/etc/nginx/certs", "/etc/nginx/conf.d", "/var/log/nginx", "/var/www/html"]

# Define working directory.
WORKDIR /etc/nginx

# Define default command.
CMD ["nginx"]

# Expose ports.
EXPOSE 80
EXPOSE 443