FROM index.alauda.cn/library/node:4.4.4-onbuild

RUN mkdir /webapp
WORKDIR /webapp

COPY . /webapp/
RUN npm install express

EXPOSE 3000

CMD ["node","app.js"]

