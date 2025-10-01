Di Eru

apt update && apt install -y netcat-openbsd

MELKOR=10.79.1.2
nc -zv $MELKOR 21
nc -zv $MELKOR 80
nc -zv $MELKOR 666

Di Melkor

apt update && apt install -y vsftpd
service vsftpd start

ss -tlnp | grep :21

apt install -y apache2
service apache2 start

ss -tlnp | grep :80

Sebelum

![Alt text](../Assets/Screenshot_94.png)

Sesudah

![Alt text](../Assets/Screenshot_95.png)
