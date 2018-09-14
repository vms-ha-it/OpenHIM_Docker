FROM ubuntu:18.04
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
RUN apt update &&\
    apt install -y curl &&\
    apt install -y nodejs &&\
    apt install -y bzip2 &&\
    apt install -y npm &&\
    apt install -y git &&\
    apt install -y mongodb &&\
    npm install openhim-core -g &&\
    apt-get install -y apache2
RUN apt install -y wget &&\
    wget https://github.com/jembi/openhim-console/releases/download/v1.12.0/openhim-console-v1.12.0.tar.gz &&\
    tar -vxzf openhim-console-v1.12.0.tar.gz --directory /var/www/html   
ENTRYPOINT /bin/bash