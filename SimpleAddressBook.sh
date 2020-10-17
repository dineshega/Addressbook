#!/bin/bash -x


declare -A Ins

function Insert()
{
for ((i=1;i<=$iA;i++))
do
	read -p "First name:" F
	Ins[$i,0]=$F

	read -p "Last name:" L
	Ins[$i,1]=$L

	read -p "Mobile number:" M
	Ins[$i,2]=$M

	read -p "Email Id: " Em
	Ins[$i,3]=$Em
        
	read -p "City:" c
	Ins[$i,4]=$c

	read -p "State:" s
	Ins[$i,5]=$s

	read -p "pin:" p
	Ins[$i,6]=$p
        
        echo "next"
done
}

function Edit()
{

echo "Enter (1) to reEnter First name (2) to reEnter Last name (3) to reEnter Mobile number (4) to reEnter Email Id (5) to reEnter city (6) to reEnter state (7) to reEnter pin"
read -p "Enter the number to edit" re
case $re in
        1 )
		read -p "ReEnter Fname:" rF
        	Ins[$eA,0]=$rF
		;;
        2 )
		read -p "ReEnter Lname:" rL
        	Ins[$eA,1]=$rL
		;;
        3 )
		read -p "ReEnter Mobile number:" rM
        	Ins[$eA,2]=$rM
		;;
        4 )
		read -p "Enter Email Id: " rEm
		Ins[$eA,3]=$rEm
		;;
	5 )
		read -p "ReEnter city:" rc
        	Ins[$eA,4]=$rc
		;;
        6 )
		read -p "ReEnter state:" rs
        	Ins[$eA,5]=$rs
		;;
        7 )
		read -p "ReEnter pin:" rp
        	Ins[$eA,6]=$rp
		;;
        *)
		;;
esac
}

function Delete()
{
for ((k=0;k<=6;k++))
do
	Ins[$dA,$k]=' '
done
echo "Deleted Address"
}

function Display()
{

for ((i=1;i<=$iA;i++))
do
echo "positon: $i"
echo "          "
	for ((j=0;j<=6;j++))
	do
		echo  ${Ins[$i,$j]}
	done
done
}

while [ true ]
do
	echo "Enter (1) to Insert (2) to Edit (3) to delete (4) to Display"
	read -p "Enter your option: " opt
	case $opt in
		1 )
			read -p "The no.of address that you would like to include: " iA
			Insert $iA;;
		2 )
			echo "check the address number in display"
			read -p "Enter Address number to edit " eA
			Edit  $eA ;;
		3 )
			read -p "Enter Position Number to Delete" dA
			Delete $dA ;;
		4 )
			Display ;;
		* )
			echo "Please enter the correct number" ;;
	esac
done
	