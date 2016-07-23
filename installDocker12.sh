sh exec.sh 'mluk' "rm -f *.deb*"
sh exec.sh 'mluk' "wget https://jenkins.hypriot.com/job/armhf-docker/15/artifact/bundles/latest/build-deb/raspbian-jessie/docker-engine_1.12.0%7Erc3-0%7Ejessie_armhf.deb"
sh exec.sh 'mluk' "apt-get purge -y docker-hypriot"
sh exec.sh 'mluk' "dpkg -i docker-engine_1.12*.deb"
