
# To Send and Handle mails using write and mail commands.

clear
read -p"Enter the UserName to whom message is to be sent : " uname
who | grep "$uname"
if [ $? -eq 0 ]
then
	echo "User has logged in"
	echo
	echo "USAGE OF WRITE COMMAND"
	echo "----------------------"
	echo "Enter the message to be sent"
	write $uname
else
	echo "User has not logged in"
	echo
	echo "USAGE OF MAIL COMMAND"
	echo "---------------------"
	echo "Enter the message to be sent"
	mail $uname
fi





# if error (sudo apt-get install mailutils) occurs.
# try "sudo apt-get install mailutils"
