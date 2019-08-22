FROM node:10.16.0

WORKDIR /usr/source/app

COPY package*.json ./

# Bundle app source
COPY . /usr/source/app

# Fixes an issue installing node-sass
RUN npm config set user root
RUN npm install -g @angular/cli@8.2.1
# Fixes an issue installing node-sass
RUN npm install -g node-gyp pm2

EXPOSE 8080

CMD ["npm", "run", "start:hello"]
