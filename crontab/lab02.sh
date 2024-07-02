# Lab 02: Crontab
# Do curl google.com every 30 secondes and log the response

link='https://www.google.cd'

# https://stackoverflow.com/questions/38906626/curl-to-return-http-status-code-along-with-the-response
# curl -o /dev/null -s -w "%{http_code}\n" http://localhost
status_code='curl -o /dev/null -s -w "%{http_code}\n" $link'

echo "At [`date`], $link responded with the status code: `$status_code`" | tee -a /home/ec2-user/lab02.log

tail -f $filename