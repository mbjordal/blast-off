#!/bin/bash
sudo bash


#echo "A Quick System Audit Script" >  ~/research/sys_info.txt
#date >> ~/research/sys_info.txt
#echo "" >> ~/research/sys_info.txt
#echo "Machine Type Info:" >> ~/research/sys_info.txt
#echo -e "$MACHTYPE \n" >> ~/research/sys_info.txt
#echo -e "Uname info: $(uname -a) \n" >> ~/research/sys_info.txt
#echo -e "IP Info: $(ip addr | grep inet | tail -2 | head -1) \n" >> ~/research/sys_info.txt
#echo "Hostname: $(hostname -s) " >> ~/research/sys_info.txt
#echo -e "\n777 Files:" >>  ~/research/sys_info.txt
#find / -type f -perm 777 >> ~/research/sys_info.txt
#echo -e "Top 10 Processes \n" >> ~/research/sys_info.txt
#ps aux -m | awk {'print $1, $2, $3, $4, $11'} | head >> ~/research/sys_info.txt

#create alias for output folder
output=$HOME/research/sys_info.txt
#put the paths of shadow and passwd in a list
files=(
'/etc/passwd'
'/etc/shadow'
)
echo -e "The permissions for sensitive /etc files: \n" >> $output
for file in ${files[@]}
do
ls -l $file >> $output
done

