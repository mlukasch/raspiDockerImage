#rm /etc/ansible/hosts && \
IPS=$(nmap -sP 172.168.0.0/24 | grep -oP "\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}")
IPS=$(echo "$IPS" | tail -n 6) 
echo "$IPS" > ~/hosts
sudo cp ~/hosts /etc/ansible/hosts
