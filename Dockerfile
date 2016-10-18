FROM index.alauda.cn/library/node:4.4.4-onbuild

RUN mkdir /webapp
WORKDIR /webapp

COPY package.json /webapp/
RUN npm install

COPY . /webapp/

EXPOSE 3000

CMD ["node","app.js"]

