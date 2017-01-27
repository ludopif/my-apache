FROM httpd:2.4


COPY ./sources.list /etc/apt/sources.list
#RUN apt-get install -y tcpdump
COPY ./https-laip7450.kmt.orange-labs.fr.crt /usr/local/apache2/conf/https-laip7450.kmt.orange-labs.fr.crt
COPY ./https-laip7450.kmt.orange-labs.fr.key /usr/local/apache2/conf/https-laip7450.kmt.orange-labs.fr.key
COPY ./server.crt /usr/local/apache2/conf/server.crt
COPY ./server.key /usr/local/apache2/conf/server.key
COPY ./my-httpd.conf /usr/local/apache2/conf/httpd.conf
