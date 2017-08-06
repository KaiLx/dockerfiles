FROM amazonlinux
MAINTAINER KaiLx

# Update and install some package
RUN yum update  -y
RUN yum install -y libcgroup wget java-1.8.0-openjdk

## Prepare install apache directory service
RUN groupadd apacheds
RUN useradd --no-create-home -g apacheds apacheds

# Install apache directory service
RUN wget http://ftp.riken.jp/net/apache/directory/apacheds/dist/2.0.0-M24/apacheds-2.0.0-M24-x86_64.rpm
RUN rpm -ivh apacheds-2.0.0-M24-x86_64.rpm

# Open the port for host that watch this
EXPOSE 10389

CMD ["/etc/rc.d/init.d/apacheds-2.0.0_M24-default", "console"]
