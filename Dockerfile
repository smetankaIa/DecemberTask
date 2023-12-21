FROM python:alpine

WORKDIR /app

COPY main.py .

ENTRYPOINT ["python" , "main.py"]

FROM node:14

ARG APP_DIR=app

RUN mkdir -p ${APP_DIR}

WORKDIR ${APP_DIR}

COPY package*.json ./

RUN npm install

COPY . .

CMD ["npm", "start"]
