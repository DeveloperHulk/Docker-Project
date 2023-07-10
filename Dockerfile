FROM ubuntu:latest
MAINTAINER rahulchoudhary87096@gmail.com

RUN apt-get update && apt-get install -y \
    apache2 \
    zip \
    unzip

ADD https://www.free-css.com/assets/files/free-css-templates/download/page292/honey.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip honey.zip
RUN cp -rvf honey-html/* .
RUN rm -rf honey.zip

CMD ["apache2ctl", "-D", "FOREGROUND"]
EXPOSE 80


#Docker token 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