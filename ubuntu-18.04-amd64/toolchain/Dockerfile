# docker build -t ubuntu18-llvm18 .
# docker run -it ubuntu18-llvm18

FROM ubuntu:18.04

RUN apt-get update
RUN apt-get -y install \
    build-essential \
    lsb-release \
    software-properties-common \
    wget

RUN wget -P /root/ https://apt.llvm.org/llvm.sh
RUN chmod +x /root/llvm.sh
WORKDIR /root

# ERRORS WHEN RUN
# RUN ./llvm.sh 18
