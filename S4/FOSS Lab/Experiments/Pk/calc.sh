# Simple calculator
# clear
res=0
i="y"

while [ $i == 'y' ] || [ $i == 'Y' ]
do

echo "Enter 1st no.: "
read n1
echo "Enter 2nd no.: "
read n2

echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"
echo "5. Modulus"
echo "ENTER CHOICE: "
read ch

case $ch in
	1) res=`expr $n1 + $n2`
	echo "Sum = " $res;;
	2) res=`expr $n1 - $n2`
	echo "Difference = " $res;;	
	3) res=`expr $n1 \* $n2`
	echo "Product = " $res;;
	4) if [ $n2 -ne 0 ] 
		then 
			res=`expr $n1 / $n2`
			echo "Quotient = " $res
		else 
			echo "Can't divide by 0"
	fi;;
	5) res=`expr $n1 % $n2`
	echo "Modulus = " $res;;
	*) echo "Invalid choice";;
esac

echo 'Do you want to continue? Y/N: '
read i

done
