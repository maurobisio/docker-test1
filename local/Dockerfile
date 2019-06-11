FROM node:latest
WORKDIR /home/node/app
COPY package.json .
COPY index.js .
EXPOSE 8082
RUN ["npm", "install"]
CMD ["npm", "start"]
