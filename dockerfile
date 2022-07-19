# the purpose of this image is to 1. pull Linux files like the word list used in the course into the host OS and 2. test my code in a production Linux environment

FROM almalinux:8.6
LABEL maintainer="connor@rhodes.contact"
LABEL description="AlmaLinux Docker image for use with the ACG Python3 Scripting for System Administrators course"
RUN yum update

# install needed python dev commands
RUN yum groupinstall -y "development tools"
RUN yum install -y lsof wget vim-enhanced words which 

# install build dependencies for python
Run yum install -y libffi-devel zlib-devel bzip2-devel openssl-devel ncurses-devel sqlite-devel readline-devel tk-devel gdbm-devel db4-devel libpcap-devel xz-devel expat-devel

# install generally useful commands
RUN yum install -y iproute
