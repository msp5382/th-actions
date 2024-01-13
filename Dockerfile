FROM ghcr.io/actions/actions-runner:latest

RUN sudo apt-get update
RUN sudo apt-get install -y jq git-all curl

RUN sudo echo "127.0.0.1 host.docker.internal\n127.0.0.1 gateway.docker.internal" > \etc\hosts

RUN curl -sL https://deb.nodesource.com/setup_18.x -o /tmp/nodesource_setup.sh
RUN sudo bash /tmp/nodesource_setup.sh
RUN sudo apt install nodejs