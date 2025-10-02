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

## Keterangan Fungsi Setiap Komponen
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

### Eru Config
```sh
auto eth0
iface eth0 inet dhcp

auto eth1
iface eth1 inet static
	address 10.79.1.1
	netmask 255.255.255.0

auto eth2
iface eth2 inet static
	address 10.79.2.1
	netmask 255.255.255.0
```

### Melkor Config
```sh
auto eth0
iface eth0 inet static
	address 10.79.1.2
	netmask 255.255.255.0
	gateway 10.79.1.1
```

### Manwe Config
```sh
auto eth0
iface eth0 inet static
	address 10.79.1.3
	netmask 255.255.255.0
	gateway 10.79.1.1
```

### Varda Config
```sh
auto eth0
iface eth0 inet static
	address 10.79.2.2
	netmask 255.255.255.0
	gateway 10.79.2.1
```

### Varda Config
```sh
auto eth0
iface eth0 inet static
	address 10.79.2.2
	netmask 255.255.255.0
	gateway 10.79.2.1
```

## Soal Nomor 2
Karena menurut Eru pada saat itu Arda (Bumi) masih terisolasi dengan dunia luar, maka buat agar Eru dapat tersambung ke internet.


### Config Eru (DNS Master)


1. Memberikan Akses Internet pada Router (Eru)

- Perintah ```sh iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE -s 10.79.0.0/16``` adalah kunci utamanya. 

Disini kami menggunakan ip config yang sudah dijadikan ketentuan.
Fungsi dari config ini adalah untuk melakukan NAT (Network Address Translation). Secara sederhana, Eru akan "menyamarkan" semua permintaan internet dari para client (Melkor, Varda, dll.) 
seolah-olah permintaan itu berasal dari Eru sendiri. Ketika balasan dari internet datang, Eru akan tahu harus meneruskannya ke client yang mana. 
Inilah yang membuat seluruh jaringan internal bisa mengakses internet hanya melalui satu gerbang (Eru).



## Soal Nomor 3
Karena menurut Eru pada saat itu Arda (Bumi) masih terisolasi dengan dunia luar, maka buat agar Eru dapat tersambung ke internet.

1. Validasi menggunakan ip a untuk mengecek apakah eru itu sudah tersambung ke internet dan juga routingnya.
![Alt text](Assets/Screenshot_58.png)

Eru sebagai Router: Terlihat jelas Eru memiliki banyak antarmuka jaringan (network interface), yaitu eth0, eth1, dan eth2, yang masing-masing terhubung ke jaringan yang berbeda.

eth0 (IP 192.168.122.196/24): Ini adalah antarmuka yang terhubung ke jaringan luar (Internet).

eth1 (IP 10.79.1.1/24): Ini adalah gateway untuk jaringan pertama (tempat Melkor & Manwe berada).

eth2 (IP 10.79.2.1/24): Ini adalah gateway untuk jaringan kedua (tempat Varda & Ulmo berada).



## Soal Nomor 4



## Soal Nomor 5



## Soal Nomor 6



## Soal Nomor 7



## Soal Nomor 8



## Soal Nomor 9



## Soal Nomor 10



## Soal Nomor 11



## Soal Nomor 12



## Soal Nomor 13



## Soal Nomor 14



## Soal Nomor 15



## Soal Nomor 16



## Soal Nomor 17



## Soal Nomor 18



## Soal Nomor 19



## Soal Nomor 20
