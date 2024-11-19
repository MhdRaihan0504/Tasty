# Gunakan image Nginx sebagai base
FROM nginx:alpine

# Salin seluruh konten direktori lokal ke direktori Nginx
COPY . /usr/share/nginx/html

# Salin file static.yml secara eksplisit ke lokasi yang benar
COPY .github/workflows/static.yml /usr/share/nginx/html/static.yml

# Ubah "PORT" di file static.yml menjadi "8080"
RUN sed -i 's/PORT/8080/g' /usr/share/nginx/html/static.yml
