FROM ubuntu:18.10

RUN apt-get update && apt-get -y upgrade && apt-get install -y apt-transport-https gnupg curl
RUN curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -
RUN echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | tee -a /etc/apt/sources.list.d/kubernetes.list
RUN apt-get -y update && apt-get install -y \
   fish \ 
   httpie \
   vim \
   jq \
   dnsutils \
   kubectl \
   netcat \
   postgresql-client \
   less \
   locales

RUN locale-gen en_US.UTF-8

ENV LC_ALL en_US.UTF-8

CMD fish
