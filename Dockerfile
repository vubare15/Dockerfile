# Get base image
FROM centos:7

# Author
MAINTAINER "Your-Fullname"

#Install tools
RUN yum install -y httpd


#Set working Directory
WORKDIR /var/www/html

#copy code to working directory
ADD ./code /var/www/html

EXPOSE 80 443

# start httpd
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]