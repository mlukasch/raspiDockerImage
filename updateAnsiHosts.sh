#rm /etc/ansible/hosts && \
IPS=$(nmap -sP 172.168.0.0/24 | grep -oP "\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}")
IPS=$(echo "$IPS" | tail -n 6) 
echo "$IPS" > ./hosts_pi
sudo cp ./hosts_pi /etc/ansible/hosts
rm hosts_pi
