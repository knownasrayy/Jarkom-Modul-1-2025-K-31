apt update && apt install -y vsftpd
apt update && apt install -y inetutils-ftp

adduser ainur
passwd ainur
adduser melkor
passwd melkor

Password 123

mkdir -p /home/ainur/shared
chown ainur:ainur /home/ainur/shared
chmod 755 /home/ainur /home/ainur/shared

nano /etc/vsftpd.conf

Tambahkan / pastikan ada:
local_enable=YES
write_enable=YES
chroot_local_user=YES
allow_writeable_chroot=YES
user_sub_token=$USER
user_config_dir=/etc/vsftpd_user_conf

service vsftpd restart

echo "halo dari ainur" > /home/ainur/shared/test.txt

Di node Eru / local FTP
Login sebagai ainur
ftp 10.79.1.1
Name: ainur
password: [password]
cd shared      # masuk ke folder shared

Klo ga berhasil login cd shared
rm /etc/vsftpd_user_conf/ainur
rm /etc/vsftpd_user_conf/melkor

ls             # lihat file
get test.txt   # download file
Pwd

echo "Halo FTP dari Ainur" > halo.txt
put halo.txt

Login sebagai melkor
ftp 10.79.1.1
Name: melkor
password: [password]
cd shared      # masuk ke folder shared - akses ditolak
