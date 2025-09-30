# Jarkom-Modul-1-2025-K-31

## Angggota

| Anggota | NRP  |
| ------- | --- |
| Shinta Alya Ramadani | 5027241016 |
| Rayhan Agnan Kusuma | 5027241102 |

## Prefix IP yang digunakan untuk kelompok K-31

| Nama Kelompok   | Prefix IP |
| ----------- | --------- | 
| K-31         |      10.79   | 


## Soal Nomor 1
Untuk mempersiapkan pembuatan entitas selain mereka, Eru yang berperan sebagai Router membuat dua Switch/Gateway. Dimana Switch 1 akan menuju ke dua Ainur yaitu Melkor dan Manwe. Sedangkan Switch 2 akan menuju ke dua Ainur lainnya yaitu Varda dan Ulmo. Keempat Ainur tersebut diberi perintah oleh Eru untuk menjadi Client.

# Keterangan Fungsi Setiap Komponen
Eru (Router)
Fungsi Utama: Eru bertindak sebagai Router. Posisinya berada di tengah, menghubungkan dua jaringan lokal yang berbeda (jaringan Switch1 dan jaringan Switch2) dengan jaringan luar (NAT1).

Tugas:

Menghubungkan Jaringan: Menjadi jembatan komunikasi antara jaringan di bawah Switch1 dan jaringan di bawah Switch2.

Gateway Utama: Berperan sebagai gateway atau gerbang utama bagi semua client (Melkor, Manwe, Varda, Ulmo) untuk bisa terhubung ke jaringan luar atau internet (melalui NAT1).

Meneruskan Paket Data: Menerima data dari client dan meneruskannya ke tujuan yang benar, baik itu ke client lain di jaringan yang berbeda maupun ke internet.

Switch1 & Switch2 (Switch)
Fungsi Utama: Keduanya berfungsi sebagai Switch.

Tugas:

Menghubungkan Client: Menjadi titik koneksi pusat untuk perangkat-perangkat (client) yang ada dalam satu segmen jaringan lokal yang sama.

Contoh: Switch1 menghubungkan Melkor dan Manwe, sementara Switch2 menghubungkan Varda dan Ulmo.

Mengelola Lalu Lintas Lokal: Mengirimkan paket data secara efisien hanya ke perangkat tujuan di dalam jaringannya, bukan menyebarkannya ke semua perangkat.

Melkor, Manwe, Varda, & Ulmo (Client)
Fungsi Utama: Keempatnya adalah Client atau end device (perangkat akhir).

Tugas: Mereka adalah komputer atau perangkat pengguna akhir dalam jaringan yang meminta dan menerima informasi atau layanan. Untuk bisa berkomunikasi dengan dunia luar atau dengan client di jaringan switch yang berbeda, mereka harus melalui gateway mereka, yaitu Eru.

NAT1 (Koneksi Internet/Jaringan Luar)
Fungsi Utama: NAT (Network Address Translation) ini merepresentasikan koneksi ke jaringan luar, seperti internet.

Tugas: Mengizinkan semua perangkat di dalam jaringan lokal (yang biasanya menggunakan alamat IP privat) untuk berbagi satu alamat IP publik saat mengakses internet.

Singkatnya, Eru adalah otaknya yang mengatur lalu lintas antar jaringan, Switch adalah penghubung perangkat dalam satu area, dan para Ainur adalah pengguna akhir dari jaringan tersebut.

