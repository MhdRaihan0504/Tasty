# Gunakan Python base image
FROM python:3.9-alpine

# Tentukan direktori kerja di dalam container
WORKDIR /app

# Salin semua file dari direktori proyek ke dalam direktori kerja container
COPY . /app

# Salin file static.yml secara eksplisit dari .github/workflows ke direktori kerja container
COPY .github/workflows/static.yml /app/static.yml

# Ubah "PORT" di file static.yml menjadi "8080"
RUN sed -i 's/PORT/8080/g' /app/static.yml

# Tambahkan variabel lingkungan PORT
ENV PORT=8080

# Ekspos port 8080 untuk digunakan Cloud Run
EXPOSE 8080

# Jalankan server HTTP Python
CMD ["sh", "-c", "python -m http.server ${PORT}"]
