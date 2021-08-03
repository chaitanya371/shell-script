# shell script to read array elements and print them using for loop

# !/bin/bash
echo -n "Enter the Total numbers :"
read n
echo "Enter numbers:"
i=0

# Read upto the size of given array 
while [ $i -lt $n ]
do
	# To input from user
	read a[$i]
	i=`expr $i + 1`
done

# Print the array 
echo "Output :"
for i in "${a[@]}"
do
	echo $i
done
