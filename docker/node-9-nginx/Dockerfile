# Main Image
FROM undcomercio/node:9

RUN apt-get install -y nginx

ADD resources/runservices.sh /tmp
RUN chmod +x /tmp/runservices.sh


ADD resources/nginx.conf /etc/nginx/nginx.conf

# STDOUT LOG 
RUN ln -sf /dev/stdout /var/log/nginx/access.log \
	&& ln -sf /dev/stderr /var/log/nginx/error.log

WORKDIR /home/node/app

EXPOSE 80

ENTRYPOINT /tmp/runservices.sh