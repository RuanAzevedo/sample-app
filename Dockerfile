FROM node:alpine

EXPOSE 4000
ENV PORT=4000

RUN mkdir -p /home/node/app
WORKDIR /home/node/app

COPY . .
RUN chown -R node:node .

RUN npm install
ENTRYPOINT [ "npm", "start" ]
