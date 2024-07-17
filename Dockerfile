#stage 1 : build from offical docker hub node.js images
FROM node:lts-alpine as build

#set working directory
WORKDIR /app 

#Copy the package.json and package-lock.json
COPY package*.json ./

#install dependencies
RUN npm install

#Copy the rest of the application code
COPY . .

EXPOSE 3000 

#Start the application
CMD ["npm", "run", "dev"]
