FROM node:0.12

RUN mkdir -p /code \
	&& chown node:node /code

WORKDIR /code
USER node

COPY package.json ./

ENV NODE_ENV production
RUN npm install

COPY index.js ./

CMD ["npm", "start"]
