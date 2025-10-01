Di node  eru

wget --no-check-certificate 'https://drive.google.com/uc?export=download&id=11ua2KgBu3MnHEIjhBnzqqv2RMEiJsILY' -O /root/Kitab_Penciptaan.zip

Pindahkan ke folder shared milik ainur
cp /root/Kitab_Penciptaan.zip /home/ainur/shared/
chown ainur:ainur /home/ainur/shared/Kitab_Penciptaan.zip
chmod 644 /home/ainur/shared/Kitab_Penciptaan.zip

Di node Manwe

Jalankan Wireshark
apt update && apt install -y inetutils-ftp

Login Ainur
ftp 10.79.1.1
cd shared
get Kitab_Penciptaan.zip
bye

Di wireshark filter ftp

Di node eru

ls -l /home/ainur/shared/Kitab_Penciptaan.zip

Ubah permission supaya read-only
chmod 555 /home/ainur/shared
chmod 444 /home/ainur/shared/Kitab_Penciptaan.zip

Di Manwe

ftp 10.79.1.1
# login pakai user ainur
cd shared
get Kitab_Penciptaan.zip   # harus berhasil
put Kitab_Penciptaan.zip   # harus gagal (read-only)
