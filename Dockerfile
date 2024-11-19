FROM nginx:alpine

# Salin file `static.yml` dan file lainnya
COPY . /usr/share/nginx/html

# Ubah "PORT" di file `static.yml` menjadi "8080"
RUN sed -i 's/PORT/8080/g' /usr/share/nginx/html/static.yml
