

#9. Shell script to create two data file and compare them to display unique and common entries.


clear

read -p"Enter the name of File-1 : " file1
echo "enter the contents of $file1"
cat >$file1

echo

read -p"Enter the name of File-2 : " file2
echo "enter the contents of $file2"
cat >$file2

#Sort both the files before using comm command
sort -o $file1 $file1
sort -o $file2 $file2

echo 
clear
echo "The items of $file1 are :-"
cat $file1

echo "The items of $file2 are :-"
cat $file2

echo
echo
echo "*********************************"
echo "The items that are unique to $file1 are :-"
comm -23 $file1 $file2
echo "*********************************"

echo
echo
echo "*********************************"
echo "The items that are unique to $file2 are :-"
comm -13 $file1 $file2
echo "*********************************"

echo
echo
echo "*********************************"
echo "The items that are common to both are :-"
comm -12 $file1 $file2
echo "*********************************"









