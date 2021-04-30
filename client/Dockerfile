FROM node:13.14-alpine

# define work directory
WORKDIR /client

# copy package dependencies files
COPY package*.json ./

# install CLI of quasar framework
RUN yarn global add @quasar/cli

# copy project files
COPY . .
