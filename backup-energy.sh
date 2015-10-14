#!/bin/bash
rsync -vra -e ssh energy@198.101.205.73:/home/energy/public_html/* /home/energy/public_html/
echo "############################################"
echo "Energy Data Downloaded Successfully !!!"
echo "Now Downloading Mysql Backup..."
mysqldump -h 198.101.205.73 -uenergy -p'NB45*(42#21' Energy_New > /root/Energy_New.sql
#mysql Energy_New < /root/Energy_New.sql
