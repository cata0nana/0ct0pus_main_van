import random , os ,requests
import json
import socket
import urllib.parse
from datetime import datetime

api_url="https://apiv10.onrender.com"
#api_url="https://api-nod.onrender.com"
#https://apiv10.onrender.com/

os.system("cp start.sh /root/hassed/start.sh && chmod +x /root/hassed/start.sh")
os.system("bash /root/hassed/cch.sh")

vversion="API RENEW SQL TIME V_FINAL "


l05_00="/root/hassed/read.me"

now = datetime.now()

dt_string = now.strftime("%d/%m/%Y %H:%M:%S")


hostname_os=socket.getfqdn()

#////////  count_left_api ////////////////////////////////////////////////////////

def count_left_api():
	response = requests.get(f'{api_url}/nor/count')
	data = response.json() #.get('COUNT(*)')
	d2=str(data[0]).split(":")
	d2=d2[1].replace('}',"")
	d3=d2.replace(' ',"")
	count_left_count = d3
	return count_left_count


#/////////////////  reset_nord_api ///////////////////////////////////////////////
#/////////////////////////////////////////////////////////////////////////////////
def reset_nord_api():

	response = requests.put(f'{api_url}/nor/reset_all')
	data = response.json()
	data_message = data.get('message')
	print(data_message)
#/////////////////////////////////////////////////////////////////////////////////
#/////////////////////////////////////////////////////////////////////////////////


#/////////////////  reset_nord_api ///////////////////////////////////////////////
#/////////////////////////////////////////////////////////////////////////////////
def read_current_l0g():
	final_msg=''
	with open(l05_00,'r') as file:
		lines = file.readlines()
		for i in lines:
			final_msg=final_msg + i
		final_msg=final_msg.replace("\n", "")
	return final_msg

#################################################################################################


#/////////////////  reset_nord_api ///////////////////////////////////////////////
#/////////////////////////////////////////////////////////////////////////////////
def alias_send_msg(text):

	count_used=str(count_left_api())
	global lommmmp
	lommmmp="jhj"

	hoost=read_current_l0g()
	lommmmp=count_used

	###################################################
	
	msg_telegram="    [ "+hoost+" ]                [ "+count_used+" ] \n[ "+vversion+ " ]   [ "+dt_string+" ] "
	token="5351653833:AAEUeIwPT187sCG5vb33t_2JGHBlcLT-kNU"
	chat_id = "-723950994"
	url_req = "https://api.telegram.org/bot" + token + "/sendMessage" + "?chat_id=" + chat_id + "&text=" + msg_telegram
	results = requests.get(url_req)
	check_tolerance(count_used)


################################################################################################
#/////////////////  reset_nord_api ///////////////////////////////////////////////
#/////////////////////////////////////////////////////////////////////////////////
def check_tolerance(count_used):

	int_count=int(count_used)
	if int_count <= 2500 :
		print(int_count)
		print(" Reset ",end="",flush=True)
		reset_nord_api()
	else :
		print(int_count)
#################################################################################################
# counting_used_config_config()
alias_send_msg(dt_string)
# print(count_left_api())
