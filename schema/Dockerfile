FROM       dokken/centos-8
COPY       mongodb.repo mysql.repo  /etc/yum.repos.d/
RUN        yum install mysql mongodb-org-shell  git -y
COPY       run.sh /
ENTRYPOINT [ "bash", "/run.sh" ]