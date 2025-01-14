#! /bin/bash
FROM       almalinux:8
COPY       mongo.repo mysql.repo  /etc/yum.repos.d/
RUN        yum install git mongodb-org mysql -y
COPY       run.sh /
ENTRYPOINT [ "bash", "/run.sh" ]