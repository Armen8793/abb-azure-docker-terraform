FROM node:16-alpine
MAINTAINER Armen Petrosyan
WORKDIR /app
COPY ./abb_task_app /app
RUN npm ci
RUN npm run build
EXPOSE 3000
CMD ["npx", "serve", "build"]

