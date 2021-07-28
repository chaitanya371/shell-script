# shell script to display grades using case statement 

echo -n "What is your test score? (in percentage): "
read percentage 

case $name in 
    9?) echo "A" ;; 
    8?) echo "B" ;;
    7?) echo "C" ;;
    6?) echo "D" ;;
    5?) echo "F" ;;
    4?) echo "F" ;;
    3?) echo "F" ;;
    2?) echo "F" ;;
    1?) echo "F" ;;
    [0-9]) echo "F" ;;
    *) echo "Please enter another number" 
       read percentage 
    ;;
esac 
