#!/bin/bash
echo  " create and delete user, create group "

if [[ $EUID -ne 0 ]]; then
  echo " Please run this script as root (use sudo)."
  exit 1
fi

read -p "Enter the username: " username
read -p "Enter the group name to create: " groupname

echo "1. Create user"
echo "2. Delete user"
echo "3. create group"
read -p "Choose 1 or 3: " choice

if [[ "$choice" == "1" ]]; then
  useradd -m "$username"
  echo " User '$username' created."

elif [[ "$choice" == "2" ]]; then
  userdel -r "$username"
  echo " User '$username' deleted."

elif [[ "$choice" == "3" ]]; then
  groupadd "$groupname"
  echo " Group '$groupname' created successfully."

else
  echo " Invalid choice."
fi
