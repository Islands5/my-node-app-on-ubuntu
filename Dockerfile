FROM ubuntu
RUN apt-get update
RUN apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_4.x | bash -
RUN apt-get install -y nodejs

RUN mkdir /app
ADD app.js /app
ADD package.json /app

WORKDIR /app
RUN npm install

EXPOSE 8080
CMD ["node", "app.js"]
