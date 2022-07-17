# the purpose of this image is to 1. pull Linux files like the word list used in the course into the host OS and 2. test my code in a production Linux environment

FROM almalinux:8.6
LABEL maintainer="connor@rhodes.contact"
LABEL description="AlmaLinux Docker image for use with the ACG Python3 Scripting for System Administrators course"
RUN yum update
RUN yum groupinstall -y "development tools"

# install needed python dev commands
RUN yum install -y lsof wget vim-enhanced words which 

# install generally useful commands
RUN yum install -y iproute
