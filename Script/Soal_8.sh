Di console ulmo

wget --no-check-certificate 'https://drive.google.com/uc?export=download&id=11ra_yTV_adsPIXeIPMSt0vrxCBZu0r33' -O cuaca.zip

ls -l cuaca.zip

apt update && apt install -y inetutils-ftp

Start capture sebelum login FTP. di line ulmo switch
Login ainur
ftp 10.79.2.1
ls
cd shared
lcd .    untuk cek directory sekarang
put cuaca.zip
bye

Di wireshark filter FTP

