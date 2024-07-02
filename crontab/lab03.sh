# Lab 03: Crontab
# If the file server.conf exists, log the activity
# else download a server.conf from git then log the server

filename='AWS-CDKIN2/server.conf'

if [ -f $filename ]; then
    echo "[`date`] The server file $filename exists." | tee -a /home/ec2-user/lab03.log
else
	echo "[`date`] The server file $filename does not exists." | tee -a /home/ec2-user/lab03.log
	echo "[`date`] Getting the file from https://github.com/bscadh/AWS-CDKIN2.git." | tee -a /home/ec2-user/lab03.log
	git clone "https://github.com/bscadh/AWS-CDKIN2.git" "AWS-CDKIN2"
	echo "[`date`] Successfully downloaded the file at $filename." | tee -a /home/ec2-user/lab03.log
fi

tail -f $filename
