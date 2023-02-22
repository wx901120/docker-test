# dockerfile
# build stage
# FROM node:lts-alpine as build-stage
# WORKDIR /app
# COPY package*.json ./
# COPY yarn.lock ./
# RUN yarn install
# COPY . .
# RUN yarn && yarn build

# # production stage
# FROM nginx:stable-alpine as production-stage
# COPY --from=build-stage /app/dist /usr/share/nginx/html
# EXPOSE 80
# CMD ["nginx", "-g", "daemon off;"]

# 本地测试
FROM nginx
COPY . .
COPY ./dist /usr/share/nginx/html
EXPOSE 80