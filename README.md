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

### Soal
Setelah semua Ainur terhubung ke internet, Melkor mencoba menyusup ke dalam
komunikasi antara Manwe dan Eru. Jalankan file berikut (traffic.zip) lalu lakukan packet
sniffing menggunakan Wireshark pada koneksi antara Manwe dan Eru, lalu terapkan
display filter untuk menampilkan semua paket yang berasal dari atau menuju ke IP
Address Manwe. Simpan hasil capture tersebut sebagai bukti.
### Tujuan
Mencatat dan menyimpan bukti lalu-lintas jaringan (packet capture) antara host Manwe dan Eru setelah script traffic.sh dijalankan oleh Melkor. Filter Wireshark yang dipakai: ip.addr == 10.79.1.3 (menampilkan semua paket berasal/tujuan IP Manwe).
### Isi file traffic.sh
```
#!/bin/bash

echo "Memulai pembuatan traffic jaringan selama 10 detik..."

cleanup() {
    echo ""
    echo "Menghentikan semua proses pembuat traffic..."
    kill $(jobs -p) > /dev/null 2>&1
    echo "Selesai."
}

trap cleanup EXIT

ping -i 0.1 8.8.8.8 > /dev/null 2>&1 &

wget -qO /dev/null http://speedtest.tele2.net/10MB.zip &
wget -qO /dev/null http://proof.ovh.net/files/10Mb.dat &

nmap -T4 -F scanme.nmap.org > /dev/null 2>&1 &

sleep 10
```

### Step by step
1. Masuk ke console Melkor (SSH atau terminal lokal).
2. Buat file dan buka editor:
```
nano traffic.sh
```
3. Paste isi traffic.sh, simpan (Ctrl+O, Enter) dan keluar (Ctrl+X).
4. Ubah permission agar executable:
```
chmod +x traffic.sh
```
5. Menjalankan capture di antara Manwe ↔ Eru
6. Pada console Melkor, jalankan:
```
./traffic.sh
```
7. Terapkan display filter di Wireshark (ip.addr == 10.79.1.3) dan simpan hasil terfilter

## Soal Nomor 7
#### Soal
Untuk meningkatkan keamanan, Eru memutuskan untuk membuat sebuah FTP Server
di node miliknya. Lakukan konfigurasi FTP Server pada node Eru. Buat dua user baru:
ainur dengan hak akses write&read dan melkor tanpa hak akses sama sekali ke
direktori shared. Buktikan hasil tersebut dengan membuat file teks sederhana kemudian
akses file tersebut menggunakan kedua user.
#### Tujuan
Menguji implementasi kontrol akses user di FTP Server, memastikan bahwa hanya user tertentu yang dapat mengakses direktori tertentu sesuai dengan hak akses yang ditentukan.
#### Step by step
1. Di console Eru:
```
apt update && apt install -y vsftpd
apt update && apt install -y inetutils-ftp
```
2. Tambah user ainur dan melkor:
```
adduser ainur
passwd ainur
adduser melkor
passwd melkor
```
3. Buat direktori shared untuk ainur dan set ownership + permission:
```
mkdir -p /home/ainur/shared
chown ainur:ainur /home/ainur/shared
chmod 755 /home/ainur /home/ainur/shared
```
 - Edit konfigurasi vsftpd:
```
nano /etc/vsftpd.conf
— Tambahkan / pastikan ada baris berikut di dalam /etc/vsftpd.conf:

local_enable=YES
write_enable=YES
chroot_local_user=YES
allow_writeable_chroot=YES
user_sub_token=$USER
user_config_dir=/etc/vsftpd_user_conf
````
4. Restart service vsftpd:
```
service vsftpd restart
```
5. Buat file tes oleh ainur di server:
```
echo "halo dari ainur" > /home/ainur/shared/test.txt
```
6. (Dari node Eru / local FTP client) — Login FTP sebagai ainur:
```
ftp 10.79.1.1
# Name: ainur
# password: [password]
cd shared
ls
get test.txt
Pwd

echo "Halo FTP dari Ainur" > halo.txt
put halo.txt
bye
```
7. (Dari node Eru / local FTP client) — Login FTP sebagai melkor dan coba akses shared:
```
ftp 10.79.1.1
# Name: melkor
# password: [password]
cd shared
# akses ditolak
bye
```

## Soal Nomor 8
#### Soal
Ulmo, sebagai penjaga perairan, perlu mengirimkan data ramalan cuaca ke node Eru.
Lakukan koneksi sebagai client dari node Ulmo ke FTP Server Eru menggunakan user
ainur. Upload sebuah file berikut (link file). Analisis proses ini menggunakan Wireshark
dan identifikasi perintah FTP yang digunakan untuk proses upload.
#### Tujuan
#### Step by step

## Soal Nomor 9
#### Soal
Eru ingin membagikan "Kitab Penciptaan" di (link file) kepada Manwe. Dari FTP Server
Eru, download file tersebut ke node Manwe. Karena Eru merasa Kitab tersebut sangat
penting maka ia mengubah akses user ainur menjadi read-only. Gunakan Wireshark
untuk memonitor koneksi, identifikasi perintah FTP yang digunakan, dan uji akses user
ainur.
#### Tujuan
#### Step by step

## Soal Nomor 10
#### Soal
Melkor yang marah karena tidak diberi akses, mencoba melakukan serangan dengan
mengirimkan banyak sekali request ke server Eru. Gunakan command ping dari node
Melkor ke node Eru dengan jumlah paket yang tidak biasa (spam ping misalnya 100
paket). Amati hasilnya, apakah ada packet loss? Catat average round trip time untuk
melihat apakah serangan tersebut mempengaruhi kinerja Eru.
#### Tujuan
#### Step by step

## Soal Nomor 11
#### Soal
Sebelum era koneksi aman, Eru sering menyelinap masuk ke wilayah Melkor. Eru perlu
masuk ke node tersebut untuk memeriksa konfigurasi, namun ia tahu Melkor mungkin
sedang memantau jaringan. Buktikan kelemahan protokol Telnet dengan membuat akun
dan password baru di node Melkor kemudian menangkap sesi login Eru ke node
Melkor menggunakan Wireshark. Tunjukkan bagaimana username dan password dapat
terlihat sebagai plain text.
#### Tujuan
#### Step by step

## Soal Nomor 12
#### Soal
 Eru mencurigai Melkor menjalankan beberapa layanan terlarang di node-nya. Lakukan
pemindaian port sederhana dari node Eru ke node Melkor menggunakan Netcat (nc)
untuk memeriksa port 21, 80, dalam keadaan terbuka dan port rahasia 666 dalam
keadaan tertutup.
#### Tujuan
#### Step by step

## Soal Nomor 13
#### Soal
Setelah insiden penyadapan Telnet, Eru memerintahkan semua koneksi administratif
harus menggunakan SSH (Secure Shell) untuk mengamankan jaringan. Lakukan
koneksi SSH dari node Varda ke Eru. Tangkap sesi tersebut menggunakan Wireshark.
Analisis dan jelaskan mengapa username dan password tidak dapat dilihat seperti pada
sesi Telnet. Tunjukkan paket-paket terenkripsi dalam hasil capture sebagai bukti
keamanan SSH.
#### Tujuan
#### Step by step

## Soal Nomor 14



## Soal Nomor 15



## Soal Nomor 16



## Soal Nomor 17



## Soal Nomor 18



## Soal Nomor 19



## Soal Nomor 20
