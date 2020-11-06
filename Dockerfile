FROM composer
LABEL MAINTAINER="SATYADEEP G" \
      "GitHub Link"="https://github.com/satyadeep"

ADD https://raw.githubusercontent.com/mlocati/docker-php-extension-installer/master/install-php-extensions /usr/local/bin/

# Add common extensions
RUN chmod uga+x /usr/local/bin/install-php-extensions && sync \
      && install-php-extensions gd \
      bcmath \
      && apk add git

CMD ["composer"]
