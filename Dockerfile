FROM akhilnairamey/sparklyr:R_3.4.1-sparklyr_0.6.2-dplyr_0.7.2

# Install python-dev, pip and docker-machine
RUN apt-get update && apt-get install python-setuptools python-dev build-essential curl -y \
  && sudo easy_install pip \
  && curl -L \
      https://github.com/docker/machine/releases/download/v0.12.2/docker-machine-`uname -s`-`uname -m` \
    > /tmp/docker-machine \
  && chmod +x /tmp/docker-machine \
  && cp /tmp/docker-machine /usr/local/bin/docker-machine

# Create cipher working directory
RUN mkdir /root/cipher

WORKDIR /root/cipher

ENV CIPHER_HOME /root/cipher

# Install cipher pip requirements
COPY requirements.txt /root/cipher

RUN pip install -r requirements.txt

RUN pip install awscli

# Install R libraries 
ENV CRASSY_VER 1.1.0
ENV CQLCONNECT_VER 2.6.3
ENV SUBPROCESS_VER master 

ADD install_github_packages.r /tmp/

RUN Rscript /tmp/install_github_packages.r && rm /tmp/install_github_packages.r

