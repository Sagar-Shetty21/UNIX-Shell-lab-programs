



#19.To search a pattern using grep and fgrep command.



clear
echo "enter the file name"
read fname1
echo "enter the contents of $fname1 and press ctrl+d"
cat >$fname1
echo "enter the file name 2"
read fname2
echo "enter the contents of $fname2 and press ctrl+w"
cat >$fname2
echo "enter the pattern"
read ptrn
#echo $ptrn $fname1 $fname2
grep -i $ptrn $fname1 $fname2
fgrep -i $ptrn $fname1 $fname2
