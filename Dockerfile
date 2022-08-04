FROM golang:1.19.0-alpine3.16 as build
WORKDIR /build
RUN apk add --no-cache hugo
COPY . .
RUN hugo --minify

FROM nginx:1.23.1-alpine as prod
COPY --from=build /build/public/ /usr/share/nginx/html/
EXPOSE 80