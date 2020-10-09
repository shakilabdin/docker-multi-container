# base image 
FROM node:alpine

WORKDIR /usr/app

# commands to run
COPY ./package.json ./
RUN npm install
COPY ./ ./


# execution command
CMD [ "npm", "start" ]