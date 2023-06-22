FROM node:alpine3.18 as build
WORKDIR /app
COPY package*.json .
RUN npm i
RUN npm i react-scripts@3.4.1 -g --silent
COPY . .
RUN npm run build

FROM nginx:stable-alpine
COPY --from=build /app/build /user/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]