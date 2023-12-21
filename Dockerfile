FROM node:alpine
FROM python:alpine

WORKDIR /app

COPY package.json

RUN npm install

COPY index.js.
COPY main.py .


CMD ["node", "index.js", "python", "main.py"]


# FROM python:alpine

# WORKDIR /app

# COPY main.py .

# CMD ["python" , "main.py"]

