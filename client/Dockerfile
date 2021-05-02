FROM node:13.14

# define work directory
WORKDIR /client

# copy project files
COPY . .

# install CLI of quasar framework
RUN yarn global add @quasar/cli

# install project dependencies
RUN yarn install
