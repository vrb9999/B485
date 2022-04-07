read -p "Select your choice (C/F) : " d
 
if [ "$d" == "C" ]
then
	read -p "Enter temperature (C) : " c
	f=$(($c * 9/5 + 32))
	echo "$c C = $f F"
elif [ "$d" == "F" ]
then
	read -p "Enter temperature (F) : " f
	c=$((($f - 32 ) * 5/9 ))
	echo "$f F = $c C"
else
	echo "Please select C or F"
	exit 1
fi