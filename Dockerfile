FROM centos:7
RUN yum upgrade && yum install -y vim gcc* libstdc++-static python3 net-tools bind-utils telnet
#LABEL "to let user use docker command with sudo, try [sudo groupadd docker, sudo gpasswd -a 'user' docker]"
