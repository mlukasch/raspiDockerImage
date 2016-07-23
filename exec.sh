sh ~/updateAnsiHosts.sh 
ansible all --ask-sudo-pass --ask-become-pass -m shell -s -u "$1" -a "$2"
