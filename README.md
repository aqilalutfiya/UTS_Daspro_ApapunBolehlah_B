#  Simple Cashier System 🛒
## 📌 Deskripsi Singkat
Simple Cashier System adalah program kaisir sederhana berbasis pascal untuk memudahkan proses transaksi penjualan secara tersktruktur. Program ini bertujuan untuk melakukan pencatatan transaksi barang, perhitungan diskon otomatis, rincian pecahan uang kembalian, serta merekap ringkasan riwayat penjualan. 

## 🚀 Fitur-Fitur Utama
### 1. Menu interaktif  
Program menyediakan menu utama yang terdiri dari Transaksi Baru, Riwayat Penjualan, dan Keluar.
### 2. Transaksi Barang  
Pengguna dapat memasukkan harga, nama, dan jumlah barang yang dibeli.
### 3. Perhitungan Total Transaksi dan Diskon  
Program menghitung subtotal setiap barang, total belanja, serta diskon berdasarkan nominal transaksi.
### 4. Pembayaran dan Kembalian  
Program menerima nominal pembayaran, memeriksa kecukupan uang, dan menghitung kembalian.
### 5. Menampilkan Struk Pembayaran  
Program menampilkan ringkasan transaksi, termasuk jumlah item, total belanja, diskon, pembayaran, dan kembalian.
### 6. Rincian Pecahan Uang Kembalian  
Program menguraikan kembalian ke dalam beberapa pecahan uang, mulai dari Rp100.000 hingga Rp100.
### 7. Riwayat Penjualan  
Program menyimpan rekap jumlah transaksi, total penjualan kotor, total diskon, total penjualan bersih, jumlah item terjual, serta informasi transaksi terakhir selama program berjalan.

## 🧠 Penjelasan Logika Program
### 1. Inisialisasi Variabel
   Variabel rekap penjualan, nama barang terakhir, dan total pembayaran diinisialisasi dengan nilai awal (0 atau string kosong) sebelum menu utama ditampilkan.
### 2. Menu Utama
   Program menggunakan perulangan `repeat-until` untuk menampilkan menu secara berulang dan percabangan `case-of` untuk menjalankan fitur sesuai pilihan pengguna.
### 3. Proses Transaksi
   Pengguna memasukkan harga, nama, dan jumlah barang. Perulangan `while` memungkinkan pengguna memasukkan beberapa barang sekaligus. Pernyataan `break` digunakan untuk mengakhiri input ketika pengguna memasukkan harga `0`, sedangkan `continue` digunakan untuk mengulang input jika terjadi kesalahan (misal: harga bernilai negatif atau jumlah <= 0).
### 4. Perhitungan Total dan Diskon
   Program menghitung subtotal dan total transaksi. Diskon ditentukan menggunakan percabangan `if-then-else` bertingkat:
   - Total belanja >= Rp500.000: diskon 10%
   - Total belanja >= Rp100.000 dan <= Rp500.000: diskon 5%
   - Total belanja <= Rp100.000: tidak mendapat diskon (0%)
   
   Total pembayaran akhir diperoleh dari total belanja dikurangi nominal diskon.
### 5. Pembayaran dan Kembalian
   Perulangan `repeat-until` memastikan pembayaran dimasukkan kembali sampai nominal uang yang dibayarkan cukup (`bayar >= total_bayar`). Setelah pembayaran mencukupi, program menghitung kembalian (`bayar - total_bayar`).
### 6. Pencetakan Struk & Pecahan Kembalian
   Menampilkan struk transaksi. Jika ada kembalian, program memecah nilai uang dari Rp100.000 hingga Rp100 menggunakan perulangan `for-to-do` dan `case-of`, memanfaatkan operator `div` untuk menghitung jumlah lembar/koin dan `mod` untuk sisa kembalian.
### 7. Rekap Riwayat Penjualan
   Setiap transaksi selesai, akumulator global (total transaksi, omzet kotor/bersih, diskon, total item, dan data transaksi terakhir) otomatis diperbarui untuk ditampilkan pada menu *Riwayat Penjualan*.
### 8. Mengakhiri Program*
   Pilihan menu *Keluar* menampilkan pesan penutup dan menghentikan perulangan `repeat-until` utama secara bersih.

## 👥 Anggota Kelompok
| Nama                         | NIM       | KOM | LAB |
| ---------------------------- | --------- | --- | --- |
| Randy Andal Bangun           | 261401049 |  B  |  3  |
| Annisa Miftahul Jannah       | 261401028 |  B  |  3  |
| Aqila Lutfiya Zahra Nasution | 261401013 |  B  |  3  |
