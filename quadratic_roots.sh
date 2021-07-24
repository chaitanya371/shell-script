# shell script to find all the possible quadratic equation roots using case 

echo "enter coefficients:"
read a
read b
read c
d=`expr $b \* $b - 4 \* $a \* $c`

if [[ $d -ge 0 ]]
then e=0
	echo $e
else
	key=1
	echo $e
fi

if [[ $e == 0 ]]
then
	echo "the roots are real "
	r1=$(echo "(-1*$b+sqrt($d))/(2*$a)" | bc -l)
	r2=$(echo "(-1*$b-sqrt($d))/(2*$a)"| bc -l)
	echo $r1 , $r2

else
	echo "thr roots are imaginary "
	real=$(echo "(-1*$b)/(2*$a)" | bc -l)
	img=$(echo "sqrt(-1*$d)/2*$a"| bc -l)
	echo "root1: $real + i$img"
	echo "root2: $real - i$img"
fi
