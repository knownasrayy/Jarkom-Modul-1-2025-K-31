Di Melkor
adduser buktiuser
apt install -y inetutils-telnetd

Di Eru
apt update  && apt install -y telnet

Edit file konfigurasi inetd (di Melkor)
nano /etc/inetd.conf

#<off># telnet  stream  tcp     nowait  root    /usr/sbin/tcpd  /usr/sbin/telnetd (hapus off nya)

service inetutils-inetd restart
ss -tlnp | grep :23 || true

Start Capture Wireshark 
Di Eru

tcp.port == 23
telnet 10.79.1.2 23
Login pakai user buktiuser

Di Wireshark
Pastikan filter sudah telnet atau tcp.port == 23.
Klik kanan pada salah satu paket TELNET → pilih Follow → TCP Stream.

