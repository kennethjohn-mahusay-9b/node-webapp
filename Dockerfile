FROM node:lts-slim

EXPOSE 3000
RUN mkdir -p /home/node/app
WORKDIR /home/node/app
COPY package*.json /home/node/app/
RUN <<EOF
npm install
EOF

COPY . /home/node/app

CMD ["npm", "start"]
