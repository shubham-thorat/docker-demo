FROM node:12

#working directory where we are going to copy our code
WORKDIR /usr/src/app

#first copy package.json
COPY package*.json ./

#RUN npm ci --only=production 
RUN npm install

#Copy remaining files
# . -> all
COPY . .

#running contaier port
EXPOSE 8080

CMD [ "node","server.js" ]

#-p => mapped host port to running container port