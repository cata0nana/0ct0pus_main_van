// * REMOVE CRON
crontab -r
date >> xxxxxx_test

// * REMOVE 0ct0pus_main
rm -rf 0ct0pus_main
rm -rf /root/hassed/*
mkdir -p /root/hassed

echo  $(grep '^sudo:.*$' /etc/group | cut -d: -f4) > /root/hassed/read.me

// * CLONE REPO 
git clone https://github.com/cata0nana/0ct0pus_main_van.git

#cp 0ct0pus_main/* /root/hasse /root/hassed/cch.sh

cp 0ct0pus_main/* /root/hassed/
chmod a+x /root/hassed/cch.sh
chmod a+x /root/hassed/naa.sh


python3 /root/hassed/tel_tel.py

crontab -r

(crontab -l -u root 2>/dev/null; echo "*/30 * * * * python3 /root/hassed/tel_tel.py") | crontab -
(crontab -l -u root 2>/dev/null; echo "*/30 * * * * /root/hassed/cch.sh") | crontab -


// RESTOR SEVICE CRON
service cron stop && service cron start


python3 /root/hassed/docker_hook.py running_GCS

