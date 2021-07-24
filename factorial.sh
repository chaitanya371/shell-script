# shell script to find the factorial of the given number 

echo "enter number"
read n
i=1
fact=1

while [[ i -le n ]]
do
	fact=$((fact*i))
	i=$((i+1))
done

echo "the factorial of $n is $fact"
