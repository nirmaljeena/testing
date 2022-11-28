FROM node:18-alpine as builder
RUN git clone https://nirmaljeena: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@github.com/nirmaljeena/testing.git
RUN cd testing
RUN cd my-app
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .


EXPOSE 3000
CMD [ "npm", "start" ]
