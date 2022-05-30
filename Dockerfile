FROM debian:latest as zola-base
RUN apt-get update && apt-get install -y wget git
RUN wget -c https://github.com/getzola/zola/releases/download/v0.14.1/zola-v0.14.1-x86_64-unknown-linux-gnu.tar.gz -O - | tar -xz
RUN mv zola /usr/bin
RUN mkdir /site
WORKDIR /site

FROM zola-base as builder
WORKDIR /app
COPY . .
RUN git submodule update --init --recursive
EXPOSE 80
# zola serve --interface 0.0.0.0 --port 80
CMD [ "zola", "serve","--interface","0.0.0.0","--port","80" ]

# FROM nginx:stable-alpine
# RUN mv /usr/share/nginx/html/index.html /usr/share/nginx/html/old-index.html
# COPY --from=builder /app/public/ /usr/share/nginx/html/

