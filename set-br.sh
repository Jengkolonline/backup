#!/bin/bash
# ==========================================
# Color
RED='\033[0;31m'
NC='\033[0m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHT='\033[0;37m'
# ==========================================
# Getting
MYIP=$(wget -qO- ipinfo.io/ip);
echo "Checking VPS"
# Link Hosting Kalian
akbarvpn="raw.githubusercontent.com/Jengkolonline/backup/main"

apt install rclone -y
printf "q\n" | rclone config
wget -O /root/.config/rclone/rclone.conf "https://${akbarvpn}/rclone.conf"
git clone  https://github.com/magnific0/wondershaper.git
cd wondershaper
make install
cd
rm -rf wondershaper
echo > /home/limit
apt install msmtp-mta ca-certificates bsd-mailx -y
cat<<EOF>>/etc/msmtprc
defaults
tls on
tls_starttls on
tls_trust_file /etc/ssl/certs/ca-certificates.crt

account default
host smtp.gmail.com
port 587
auth on
user bckupvpns@gmail.com
from bckupvpns@gmail.com
password Yangbaru1 
logfile ~/.msmtp.log
EOF
chown -R www-data:www-data /etc/msmtprc
cd /usr/bin
wget -O menu-backup "https://raw.githubusercontent.com/Jengkolonline/backup/main/menu-backup.sh"
wget -O autobackup "https://raw.githubusercontent.com/Jengkolonline/backup/main/autobackup.sh"
wget -O backupxray "https://raw.githubusercontent.com/Jengkolonline/backup/main/backup.sh"
wget -O backup "https://raw.githubusercontent.com/Jengkolonline/backup/main/backup.sh"
wget -O restorexray "https://raw.githubusercontent.com/Jengkolonline/backup/main/restore.sh"
wget -O restore "https://raw.githubusercontent.com/Jengkolonline/backup/main/restore.sh"
#wget -O strt "https://raw.githubusercontent.com/Jengkolonline/backup/main/strt.sh"
#wget -O limitspeed "https://raw.githubusercontent.com/Azigaming404/Autoscript-by-azi/main/backup/limitspeed.sh"
chmod +x menu-backup
chmod +x autobackup
chmod +x backupxray
chmod +x backup
chmod +x restorexray
chmod +x restore
#chmod +x strt
#chmod +x limitspeed
cd
wget -q https://raw.githubusercontent.com/Jengkolonline/begeg/main/subdomains.txt

rm -f /root/set-br.sh
rm -f /root/subdomains.txt
