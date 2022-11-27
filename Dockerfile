FROM node:16-alpine
MAINTAINER Armen Petrosyan
WORKDIR /app
COPY ./ /app
RUN npm install
RUN npm run build
EXPOSE 80
CMD ["npx", "serve", "build"]

