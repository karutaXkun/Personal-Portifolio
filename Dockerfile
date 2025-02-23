FROM node:22-alpine

WORKDIR /usr/src/app
RUN npm run dev
COPY package.json .
COPY package-lock.json .
RUN npm install
From httpd:alpine
WORKDIR /usr/local/apache2/htdocs
COPY --from build /build/build/ .
RUN chown -R www-data:www-data /usr/local/apache2/htdocs \
    && sed -i "s/Listen 80/Listen \${PORT}/g" /usr/local/apache2/conf/httpd.conf
