# shell script for pattern match in a file using case statement 

$ cat fileop.sh
#!/bin/bash
# Check 3 arguments are given #
if [ $# -lt 3 ]
then
	echo "Usage : $0 option pattern filename"
	exit
fi

# Check if the given file exists #
if [ ! -f $3 ]
then
	echo "Filename given \"$3\" doesn't exist"
	exit
fi

case "$1" in

	# count number of lines matches
	-i) echo "Number of lines matches with the pattern $2 :"
		grep -c -i $2 $3
		;;
	# count number of words matches
	-c) echo "Number of words matches with the pattern $2 :"
		grep -o -i $2 $3 | wc -l
		;;
	# print all the matched lines
	-p) echo "Lines matches with the pattern $2 :"
		grep -i $2 $3
		;;
	# delete all the lines matches with the pattern
	-d) echo "After deleting the lines matches with the pattern $2 :"
		sed -n "/$2/!p" $3
		;;
	*) echo "Invalid option"
		;;
esac
