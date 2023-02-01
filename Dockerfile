FROM centos:centos7
MAINTAINER Amit Haldhar via https://github.com/amgoit <goamit.haldhar@gmail.com>
LABEL description "Portfolio extract from git and running on centos7 using apache"
WORKDIR /root
RUN yum -y install httpd && \
yum -y install git && \
yum clean all && \
git clone https://github.com/amgoit/amgoit.github.io.git && \
cp -rf amgoit.github.io/* /var/www/html/
#ADD https://github.com/amgoit/amgoit.github.io.git /var/www/html/
#COPY source/ /var/www/html/
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
#EXPOSE 443
