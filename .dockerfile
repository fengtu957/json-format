FROM nginx:1.27-alpine

RUN apk add --no-cache curl

WORKDIR /usr/share/nginx/html

COPY index.html ./index.html

EXPOSE 80

HEALTHCHECK --interval=30s --timeout=3s CMD curl -f http://localhost || exit 1

