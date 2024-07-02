# Lab 04: Crontab
# Log the % of cpu usage, memory and stockage of the computer

# Log the % of the CPU used
# https://stackoverflow.com/questions/1332861/how-can-i-determine-the-current-cpu-utilization-from-the-shell
echo "[`date`] CPU used: `top -b -n 1 | grep ^%Cpu | tee -a /home/ec2-user/lab04.log`"

# Log the % of the memory used
# https://www.howtogeek.com/659529/how-to-check-memory-usage-from-the-linux-terminal/
echo "[`date`] Memory used: `free -m | grep Swap | awk '{print ($3/$2)*100}' | tee -a /home/ec2-user/lab04.log`"

# Log the % of the stockage used
echo "[`date`] Stockage used: `df | grep /dev/sda8 | awk '{print $5}' | tee -a /home/ec2-user/lab04.log`"

tail -f $filename