FROM       dokken/centos-8
COPY       mongo.repo mysql.repo  /etc/yum.repos.d/
RUN        yum install mysql-server mongodb-org  git -y
COPY       run.sh /
ENTRYPOINT [ "bash", "/run.sh" ]