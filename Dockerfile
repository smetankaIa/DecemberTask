FROM node:14

WORKDIR /app

COPY package.json .
COPY package-lock.json .
RUN npm install

COPY . .

CMD ["node", "index.js"]


FROM python:alpine

WORKDIR /app

COPY main.py .

ENTRYPOINT ["python" , "main.py"]

