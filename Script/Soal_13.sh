13.

# Update package list
apt update

# Install OpenSSH server
apt install -y openssh-server

# Enable SSH service saat boot
update-rc.d ssh enable

# Start SSH service
service ssh start

# Cek status SSH
service ssh status

# Pastikan port 22 listening
ss -tlnp | grep :22

# Cek proses sshd
ps aux | grep [s]shd

# Set/ubah password root
passwd root

# Cek konfigurasi penting SSH
grep -E "PermitRootLogin|PasswordAuthentication|UsePAM" /etc/ssh/sshd_config

# Jika perlu edit untuk root login & password auth
nano /etc/ssh/sshd_config
# Pastikan:
# PermitRootLogin yes
# PasswordAuthentication yes
# UsePAM yes

# Restart sshd agar config baru berlaku
pkill sshd
/usr/sbin/sshd &
ps aux | grep [s]shd

VARDA

# Test ping ke Eru
ping -c 3 10.79.1.1

# Hapus host lama jika muncul warning host key changed
ssh-keygen -f "/root/.ssh/known_hosts" -R "10.79.1.1"

# Login SSH
ssh root@10.79.1.1

# Jika muncul fingerprint baru, ketik:
yes

# Masukkan password root Eru

whoami
ls -la /root
uname -a


