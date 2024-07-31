# syntax=docker/dockerfile:1

# Comments are provided throughout this file to help you get started.
# If you need more help, visit the Dockerfile reference guide at
# https://docs.docker.com/go/dockerfile-reference/

# Want to help us make this template better? Share your feedback here: https://forms.gle/ybq9Krt8jtBL3iCk7

FROM node:18.20.4-alpine
ENV process.env.NODE_ENV=development
WORKDIR /app

RUN yarn install

EXPOSE 3000

COPY . .

CMD yarn build && yarn serve
