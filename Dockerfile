FROM node:10.16.0

WORKDIR /usr/source/app

COPY package*.json ./

# Bundle app source
COPY . /usr/source/app

# comment out the build for now
# time permitting, it'd be nice to add angular & use ng build
#RUN npm run build-hw:hello

EXPOSE 8080

CMD ["npm", "run", "start:hello"]
