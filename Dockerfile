FROM ubuntu

RUN apt-get update 
RUN apt-get install -y make git-core ncurses-dev unzip zip 
RUN apt-get install -y systemd rsync

RUN apt-get install -y curl gpg 

RUN curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg &&\
    install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/ &&\
    sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list' &&\
    apt-get install apt-transport-https -y &&\
    apt-get update &&\
    apt-get install -y code 