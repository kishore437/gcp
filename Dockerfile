FROM centos
MAINTAINER kishore
RUN yum install nano -y && yum install vim -y
RUN yum install tree -y
USER nobody
WORKDIR /tmp
RUN touch t1 t2 t3
COPY python.py .
CMD ["echo", "hello"]
EXPOSE 80

