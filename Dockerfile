FROM ubuntu:14.04
EXPOSE 5000
EXPOSE 5001
EXPOSE 8080
EXPOSE 5050
EXPOSE 5051
EXPOSE 5052
EXPOSE 7788
EXPOSE 80
EXPOSE 9000
WORKDIR /etc/
RUN apt update
RUN apt-get install -y software-properties-common
RUN add-apt-repository ppa:openhie/release
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927
RUN echo 'deb http://repo.mongodb.org/apt/ubuntu trusty/mongodb-org/3.2 multiverse' | tee /etc/apt/sources.list.d/mongodb-org-3.2.list
RUN apt-get update
RUN apt install -y wget
RUN apt-get install -y openhim-core-js --force-yes
RUN apt-get install -y openhim-console
#    apt install -y curl &&\
#    apt install -y nodejs &&\
#    apt install -y bzip2 &&\
#    apt install -y npm &&\
#    apt install -y git &&\
#    apt install -y mongodb &&\
#    npm install openhim-core -g &&\
#    apt-get install -y apache2
#RUN apt install -y wget &&\
#    wget https://github.com/jembi/openhim-console/releases/download/v1.12.0/openhim-console-v1.12.0.tar.gz &&\
#    tar -vxzf openhim-console-v1.12.0.tar.gz --directory /var/www/html   
ENTRYPOINT /bin/bash
