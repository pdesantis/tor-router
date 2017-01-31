FROM ubuntu:16.10

EXPOSE 9050

EXPOSE 53

ENV DNS_PORT 53

ENV SOCKS_PORT 9050

ADD https://deb.nodesource.com/setup_7.x /nodejs_install

RUN bash /nodejs_install

RUN apt install -y nodejs tor git

ADD . /app

WORKDIR /app

RUN npm install

CMD npm start