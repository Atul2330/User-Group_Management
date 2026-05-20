#!/bin/bash

clear
condition=true
while $condition
do
	echo "Group Management"
	echo ""
	echo "Select an option: "
	echo "1. Create Group"
	echo "2. Change Group Name"
	echo "3. Get group detail"
	echo "4. Delete Group"
	echo "5. Quit"
	read input
	if [ $input -eq 1 ] >/dev/null 2>&1
	then
		clear
		echo "Create Group"
		echo " "
		read -p "Group Name: " groupName
		sudo groupadd $groupName
	elif [ $input -eq 2 ] >/dev/null 2>&1
	then
		clear
		echo "Change Group Name"
		echo " "
		read -p "Old Group Name: " oldGroupName
		read -p "New Group Name: " newGroupName
		sudo groupmod -n $newGroupName $oldGroupName
	elif [ $input -eq 3 ] >/dev/null 2>&1
	then 
		clear
		echo "Check Group Detail"
		echo " "
		read -p "Group Name: " groupName
		cat /etc/group | grep $groupName
	elif [ $input -eq 4 ] >/dev/null 2>&1
	then
		clear
		echo "Delete Group"
		echo " "
		read -p "Group Name: " groupName
		sudo groupdel $groupName
	elif [ $input -eq 5 ] >/dev/null 2>&1
	then
		echo "Exiting..."
		condition=false
	else 
		echo "Invalid Option"
	fi
done
