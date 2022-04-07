read -p "Enter year: " x

if [[ $(( x % 400 )) == 0 || $(( x % 100)) != 0 && $(( x % 4 )) == 0 ]]
then
	echo "Leap year"
else
	echo "Not leap year"
fi
