# Gunakan Python base image
FROM python:3.9-alpine

# Salin seluruh konten direktori lokal ke dalam direktori kerja dalam container
WORKDIR /app
COPY . /app

# Ubah "PORT" di file static.yml menjadi "8080"
RUN sed -i 's/PORT/8080/g' static.yml

# Tambahkan variabel lingkungan PORT
ENV PORT=8080

# Ekspos port 8080
EXPOSE 8080

# Jalankan server Python
CMD ["sh", "-c", "python -m http.server ${PORT}"]
