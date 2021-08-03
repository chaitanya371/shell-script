# shell script to find the file type using case statement 

$ cat filetype.sh
#!/bin/bash

for filename in $(ls)
do
	# Take extension available in a filename
	ext=${filename##*\.}
	case "$ext" in
        c) echo "$filename : C source file"
           ;;
        o) echo "$filename : Object file"
           ;;
        sh) echo "$filename : Shell script"
            ;;
        txt) echo "$filename : Text file"
        	 ;;
        *) echo " $filename : Not processed"
           ;;
	esac
done

$ ./filetype.sh
a.c : C source file
b.c : C source file
c1.txt : Text file
fileop.sh : Shell script
obj.o : Object file
text : Not processed
t.o : Object file
