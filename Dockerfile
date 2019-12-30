FROM node:10
# Create app directory
WORKDIR /usr/src/app
# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./
# RUN add-apt-repository ppa:ondrej/php
# RUN apt update
# RUN apt-get install curl
# RUN curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
# RUN apt install nodejs
RUN npm set @sap:registry=https://npm.sap.com
RUN npm install
RUN npm install @sap/cds-dk
# If you are building your code for production
# RUN npm ci --only=production
# Bundle app source
COPY . .
EXPOSE 4004


CMD ["npm","start"]

