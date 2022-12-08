FROM icr.io/codeengine/node:12-alpine
COPY package.json .
RUN npm install
RUN mkdir public
COPY public/index.html ./index.html
COPY server.js .
EXPOSE 8080
CMD [ "node", "server.js" ]
