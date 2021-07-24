# shell script to print the first 'n' odd numbers 

echo "enter n"
read n
echo "first n odd numbers"
c=1
x=1

while [[ $c -le $n ]]
do
if [ `expr $x % 2` != 0 ]
then
	echo "$x"
	c=$((c+1))
fi
x=$((x+1))
done
