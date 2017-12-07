#version 0.0.1
FROM ubuntu:16.04
MAINTAINER Sri Harsha Vathsavayi "sriharsha.vathsavayi@csc.fi"

# update the apt package manager
RUN apt-get update     

# install python
RUN apt-get install -y python

# install make
RUN apt-get install -y build-essential

# copy project to container 
COPY ./ /opt/character_count/

# set work directory in container
WORKDIR /opt/character_count

# default command to execute when container starts 
CMD ["/bin/bash"]
