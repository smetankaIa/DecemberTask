FROM node:14

WORKDIR /app

COPY package.json .

RUN npm install

COPY index.js .

CMD ["node", "index.js"]


FROM python:alpine

WORKDIR /app

COPY main.py .

CMD ["python" , "main.py"]

