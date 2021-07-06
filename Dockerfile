FROM centos:latest
MAINTAINER sanjay.dahiya332@gmail.com
RUN yum install -y httpd \
  zip \
 unzip 
ADD https://www.free-css.com/free-css-templates/page268/garelick.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip garelick.zip
RUN cp -rvf garelick/* .
RUN rm -rf garelick garelick.zip 
CMD ["/usr/sbin/httpd", "-D",  "FOREGROUND"]
EXPOSE 80
