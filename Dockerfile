FROM node:alpine, python:alpine

WORKDIR /app

COPY package.json, main.py .

RUN npm install

COPY index.js, main.py .

CMD ["node", "index.js", "python", "main.py"]


# FROM python:alpine

# WORKDIR /app

# COPY main.py .

# CMD ["python" , "main.py"]

