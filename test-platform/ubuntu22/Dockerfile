FROM ubuntu:22.04

RUN apt-get update

RUN apt-get -y install \
    default-jre \
    git \
    vim

RUN apt-get -y install apt-transport-https curl gnupg
RUN curl -fsSL https://bazel.build/bazel-release.pub.gpg | gpg --dearmor >bazel-archive-keyring.gpg

#apt update && sudo apt install bazel-6.5.0

RUN git clone https://github.com/yuriit-google/llvm_mini_toolchain.git

WORKDIR /tmp
