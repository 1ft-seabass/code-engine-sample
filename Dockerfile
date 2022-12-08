FROM icr.io/codeengine/node:12-alpine
RUN npm install
COPY package.json .
COPY server.js .
EXPOSE 8080
CMD [ "npm", "install" ]
CMD [ "node", "server.js" ]
