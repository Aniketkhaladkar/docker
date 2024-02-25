FROM debian:latest

USER root

RUN apt update -y
RUN apt install npm -y

WORKDIR /opt

RUN git clone https://github.com/shubhamkalsait/devops-fullstack-app.git

WORKDIR /opt/frontend

RUN npm install
RUN npm fund

EXPOSE 3000

CMD [ "npm","start" ]

