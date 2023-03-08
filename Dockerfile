FROM node:alpine

EXPOSE 80
ENV PORT=80

RUN mkdir -p /home/node/app
WORKDIR /home/node/app

COPY . .
RUN chown -R node:node .

USER node
RUN npm install
ENTRYPOINT [ "npm", "start" ]