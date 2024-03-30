FROM node:21

WORKDIR /mycode

ENV PORT=80

COPY package.json /mycode/package.json

RUN npm install

COPY . /mycode

CMD [ "node", "src/app.js" ]