Di Melkor

ip -4 addr show

Di Wireshark
Set filter di Wireshark menjadi icmp

ERU_IP=10.79.1.1
ping -c 10 $ERU_IP | tee baseline_ping.txt
tail -n2 baseline_ping.txt

Catat:
% packet loss (baris pertama ringkasan)
avg RTT (baris rtt min/avg/max/mdev = ..., ambil nilai kedua)
awk -F'/' '/rtt/ {print "avg RTT=" $5 " ms"}' baseline_ping.txt
grep -oP '\d+(?=% packet loss)' baseline_ping.txt | head -n1 | xargs -I{} echo "packet loss={} %"

ping -c 100 $ERU_IP | tee ping_100.txt
tail -n2 ping_100.txt

# packet loss
grep 'packet loss' ping_100.txt

# avg RTT
awk -F'/' '/rtt/ {print "avg RTT=" $5 " ms"}' ping_100.txt

Cara menilai hasil & apa yang dicatat di laporan
Tuliskan minimal:
IP Melkor & IP Eru
Perintah yang dijalankan (contoh: ping -c 100 10.79.1.1)
Baseline: packet loss & avg RTT (hasil ping -c 10)
Spam: packet loss & avg RTT (hasil ping -c 100)
Interpretasi: apakah packet loss meningkat? apakah avg RTT naik signifikan?
Jika kamu merekam vmstat/top → perhatikan apakah CPU load naik / idle turun.
Lampirkan screenshot Wireshark yang memperlihatkan beberapa Echo (ping) Request dan Echo Reply, atau ringkasan pcap/grep.
