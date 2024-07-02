#!/bin/bash
# Lab 01: Crontab
# Print 'Hello, world!' every 30 secondes

message='Hello, world'
echo $message

echo "[`date`] we logged the message: $message" | tee -a /home/ec2-user/lab01.log

tail -f $filename