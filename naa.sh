if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  sudo su
  ls
fi
