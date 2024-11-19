# Gunakan image Nginx sebagai base
FROM nginx:alpine

# Salin file HTML dan CSS ke direktori Nginx
COPY . /usr/share/nginx/html
