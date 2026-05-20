#!/bin/bash
addUserPassword(){
	localVar1=$1
	sudo passwd $localVar1
}
condition=true
while $condition
do
	echo "User Management"
	echo " "
	echo "Select an option: "
	echo "1. Add user"
	echo "2. Add user password"
	echo "3. Check user's UID"
	echo "4. Show user's detail"
	echo "5. Delete user"
	echo "6. Exit"
	read input
	if [ $input -eq 1 ]
	then
		clear
		echo "Add user"
		echo " "
		read -p "Username: " user
		sudo adduser -m $user
		addUserPassword $user
	elif [ $input -eq 2 ]
	then
		clear
		echo "Create user's password"
		read -p "Username: " user
		addUserPassword $user
	elif [ $input -eq 3 ]
	then
		clear
		echo "Check User UID"
		read -p "Username: " user
		id $user
	elif [ $input -eq 4 ]
	then 
		clear
		echo "Check User Detail"
		read -p "Username: " user
		cat /etc/passwd | grep $user
	elif [ $input -eq 5 ]
	then
		clear
		echo "Delete User"
		read -p "Username: " user
		sudo userdel -r -f $user
	else
		echo "Exiting..."
		condition=false
	fi
done
