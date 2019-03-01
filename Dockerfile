FROM node:latest as builder
RUN mkdir -p /app
COPY ./ ./app
WORKDIR /app 
RUN npm i
RUN npm run build:dev

FROM nginx
RUN mkdir -p /app
WORKDIR /app 
COPY --from=builder /app/web ./web
RUN sed -i 's#/usr/share/nginx/html#/app/web/#g'  /etc/nginx/conf.d/default.conf
CMD ["nginx", "-g", "daemon off;"]

