FROM centos:7
RUN yum upgrade && yum install -y vim gcc* \
libstdc++-static \
python3 net-tools \
bind-utils telnet && \
git clone https://github.com/rofl0r/proxychains-ng.git && \
cd proxychains-cg && \
./configure && make && sudo ake install && \
sudo cp ./src/proxychains.conf /etc/proxychains.conf && \
cd .. && rm -rf proxychains-ng \
