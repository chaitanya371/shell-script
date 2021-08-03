# shell script to read array elements and print them using while loop

# !/bin/bash
echo -n "Enter the Total numbers :"
read n
echo "Enter numbers :"
i=0

# Read upto the size of given array 
while [ $i -lt $n ]
do
	# To input from user
	read a[$i]
	i=`expr $i + 1`
done

# To print array 
echo "Output :"
i=0
while [ $i -lt $n ]
do
	echo ${a[$i]}
	i=`expr $i + 1`
done
