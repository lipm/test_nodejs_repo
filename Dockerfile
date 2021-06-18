FROM node:15.5.0

WORKDIR /

COPY package*.json ./
COPY tsconfig.json ./

COPY src /

RUN ls -a

RUN npm i --quiet
RUN npm run build

EXPOSE 5000

CMD ["node", "./index.js"]
