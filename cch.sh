#!/bin/bash


# telegram_tokens_van="5842682178:AAHhcZ41vh4XpIXvVhZ0-RuN0KkCClVgg4g"
# chat_id_alerts_van_google = "-1001633899177"
# TELEGRAM_BOT_TOKEN="5842682178:AAHhcZ41vh4XpIXvVhZ0-RuN0KkCClVgg4g"
TELEGRAM_BOT_TOKEN="2137513961:AAGENlwIUQnfvbKZX64-fZ72R_oStto8oFo"
chat_id_alerts_van_google = "-857300964"




su_img_3=$(cat read.me)
function maFonction()
{
  curl -X POST \
       -H 'Content-Type: application/json' \
       -d '{"chat_id": "-857300964", "text": "👽[@ 👽VANISH👽 @] 👽 testContainer  exist", "disable_notification": true}' \
       https://api.telegram.org/bot$TELEGRAM_BOT_TOKEN/sendMessage
  
}
function testContainer2()
{
  curl -X POST \
       -H 'Content-Type: application/json' \
       -d '{"chat_id": "-857300964", "text": "👽[@ 👽VANISH👽 @]👽 Container does not exist", "disable_notification": true}'$su_img_3'' \
       https://api.telegram.org/bot$TELEGRAM_BOT_TOKEN/sendMessage
  
}

if [ $( docker ps -a | grep vanish_bo_indabox_qu | wc -l ) -gt 0 ]; then
  echo "[@ VANISH @] testContainer exists"
  maFonction
else
  echo "[@ VANISH @] testContainer does not exist"
  testContainer2
  bash /root/hassed/start.sh
fi


echo $TELEGRAM_BOT_TOKEN
