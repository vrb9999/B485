#inch=42
#onefeet=0.0833
#a=`echo $onefeet $inch | awk '{ print $1*$2 }'`
#echo $a

#l=60
#b=40
#meter=0.3048
#a=`echo $meter $l $b | awk '{ print $1*$2 meters }{ print $1*$3 meters}'`
#echo $a


a=3.28
b=12.00
c=39.37

read -p "input format(f/in/m): " input
read -p "value: " value
read -p "output format(f/in/m): " output

if [ $input == $output ]
then
	echo "$value $input = $value $input"
elif [ $input == "f" ]
then
	if [ $output == "in" ]
	then
		echo "$value $input = $(( $value * $b )) $output"
	elif [ $output == "m" ]
	then
		echo "$value $input = $(( $value / $a )) $output"
	fi
elif [ $input == "in" ]
then	
	if [ $output == "f" ]
	then
		echo "$value $input = $(( $value / $b )) $output"
	elif [ $output == "m" ]
	then
		echo "$value $input = $(( $value / $c )) $output"
	fi
elif [ $input == "m" ]
then	
	if [ $output == "in" ]
	then
		echo "$value $input = $(( $value * $c )) $output"
	elif [ $output == "f" ]
	then
		echo "$value $input = $(( $value * $a )) $output"
	fi
else
	echo invalid
fi