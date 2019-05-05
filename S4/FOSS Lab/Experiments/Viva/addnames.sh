#! /bin/bash
# $1 - ulist
# $2 - username

# echo $# arguments 
if [ $# -ne 2 ]; 
    then echo "Illegal number of parameters"	

elif [ -e $1 ]
then
    if grep -Fxq "$2" $1
	then
	    	# code if found
		echo "Username already exists in file"
	else
		# code if not found
		echo "$2" >> $1
   fi	
else
    echo "File doesn't exist"
fi
