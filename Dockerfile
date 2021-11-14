FROM j1mc/docker-zola
WORKDIR /app
COPY . .
EXPOSE 1111
CMD ['zola', 'serve']
