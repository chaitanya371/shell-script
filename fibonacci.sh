#shell script to generate fibonacci series

echo "Enter the number of terms: "
read n
echo "Fibonacci series is: " 
a = -1
b = 1
c = 0
for (( i = 1; i <= n; i++ )) do
	c = 'expr $a + $b' 
	echo $c
	a = $b b = $c
done 
