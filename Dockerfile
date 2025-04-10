# Gunakan image Node.js versi ringan
FROM node:18-alpine

# Buat direktori kerja di dalam container
WORKDIR /app

# Salin file konfigurasi dulu (agar cache install bisa dipakai)
COPY package*.json ./

# Install semua dependencies dari package.json
RUN npm install

# Salin semua isi folder ke dalam container
COPY . .

# Ekspose port 5000 agar bisa diakses dari luar
EXPOSE 5000

# Perintah untuk menjalankan server Node.js
CMD ["npm", "start"]
