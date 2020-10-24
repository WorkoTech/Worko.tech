FROM nginx:alpine

WORKDIR /usr/share/nginx/html
RUN apk add --no-cache gettext

COPY nginx-entrypoint.sh /usr/share/nginx/html

COPY . /usr/share/nginx/html

ENTRYPOINT [ "sh", "/usr/share/nginx/html/nginx-entrypoint.sh" ]
