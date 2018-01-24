FROM ubuntu:14.04
MAINTAINER nlbessay@yahoo.fr
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get install -y curl nmap socat openssh-client openssl iotop strace tcpdump lsoft inotify-tools sysstat buiod-essential
RUN echo "source /root/bash_extra" >> /root/.bashrc
ADD bash_extra /root/bash_extra
CMD["/bin/bash"]
