FROM node:alpine

COPY . .
RUN npm install
ENTRYPOINT [ "npm", "start" ]