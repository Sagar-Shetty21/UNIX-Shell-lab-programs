


#11. Execution of various file/directory handling commands.


# 1)pwd command - prints the current directory.
	echo "pwd - prints the current directory"
	echo "The current directory is " `pwd`
	echo "-------------------------------------------"
	
# 2)cd command - used to change the directory.
	echo "cd - change directory"
	echo "cd ~ or cd for home directory " `cd ~ && pwd`
	echo "cd - for previous directory " `cd - && pwd`
	echo "cd .. to move to parent directory " `cd .. && pwd`
	echo "cd / to move to root directory " `cd / && pwd` 
	echo "-------------------------------------------"
	
# 3)ls command - lists all files and directories under current directory.
	echo "ls - lists all files and directories under current directory"
	echo "ls -l  Lists all the files, directories and their mode, Number of links,owner of the file, file size, Modified date and time and filename" `ls -l`
	echo "ls -t Lists in order of last modification time" `ls -t`
	echo "ls -a Lists all entries including hidden files" `ls -a`
	echo "ls -d Lists directory files instead of contents" `ls -d`
	echo "ls -p Puts slash at the end of each directories" `ls -p`
	echo "ls -u Lists in order of last access time" `ls -u`
	echo "ls -i Displays inode information" `ls -i`
