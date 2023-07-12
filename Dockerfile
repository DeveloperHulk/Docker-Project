FROM ubuntu:latest
MAINTAINER rahulchoudhary87096@gmail.com

RUN apt-get update && apt-get install -y \
    apache2 \
    zip \
    unzip

ADD https://www.free-css.com/assets/files/free-css-templates/download/page291/drool.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip drool.zip
RUN cp -rvf drool-html/* .
RUN rm -rf drool.zip
RUN rm -rf drool-html

CMD ["apache2ctl", "-D", "FOREGROUND"]
EXPOSE 80


#Docker token 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

#this is a docker file ihaspodhpahasdas
#updatedobasoidauasldb