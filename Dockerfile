FROM centos:7
RUN yum upgrade && yum install -y vim gcc* libstdc++-static python3 net-tools bind-utils
