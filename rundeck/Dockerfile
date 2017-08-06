FROM amazonlinux
MAINTAINER KaiLx

RUN rpm -Uvh http://repo.rundeck.org/latest.rpm 

RUN yum update -y
RUN yum install -y java-1.8.0-openjdk rundeck

COPY init.sh ~/
COPY ldap.conf /etc/rundeck/

EXPOSE 4440

CMD ["/bin/bash", "-x", "~/init.sh"]