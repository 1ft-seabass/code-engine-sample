FROM icr.io/codeengine/node:12-alpine
COPY package.json .
RUN npm install
COPY public/ ./
COPY server.js .
CMD [ "ls", "-lha" ]
CMD [ "cd", "public" ]
CMD [ "pwd" ]
CMD [ "ls", "-lha" ]
CMD [ "cd", ".." ]
CMD [ "pwd" ]
EXPOSE 8080
CMD [ "node", "server.js" ]
