# docker global repo
FROM node:latest



RUN mkdir -p /app

WORKDIR /app

COPY package.json . 

RUN npm install

COPY . . 

# CMD ["npm","start"]

# Run it
ENTRYPOINT ["node", "start"]