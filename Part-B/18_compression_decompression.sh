


#18.Shell program to compression and decompression of files using gzip andgunzip.



clear
echo "enter the file name"
read fname
echo "size of $file name before compression is"
wc -c $fname
gzip $fname
echo "size of file name after compression"
wc -c $fname.gz
#unzip the file
gunzip $fname.gz
echo "after decompression $fname"
wc -c $fname
echo $fname


