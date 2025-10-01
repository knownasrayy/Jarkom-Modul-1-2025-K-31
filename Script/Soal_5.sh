Di console Eru
nano /root/.bashrc
apt update && apt install -y iptables 
# Untuk Iptablesdi network config GNS3 dengan perintah:
# up iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE -s 192.236.0.0/16

Di semua console
nano /root/.bashrc
echo "nameserver 192.168.122.1" > /etc/resolv.conf

