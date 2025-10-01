cat /etc/resolv.conf 
echo nameserver 192.168.122.1 > /etc/resolv.conf
ping google.com -c 3
