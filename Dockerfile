FROM node:10
# Create app directory
WORKDIR /usr/src/app
# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package.json ./
RUN npm set @sap:registry=https://npm.sap.com
RUN npm install -g @sap/cds-dk
RUN npm install
# If you are building your code for production
# RUN npm ci --only=production
# Bundle app source
COPY . .
EXPOSE 8080


CMD ["cds","run","--in-memory"]

