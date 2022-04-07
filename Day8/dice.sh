one=0
two=0
three=0
four=0
five=0
six=0
key=0
declare -A dict
while [[ $one -lt 10 ]] && [[ $two -lt 10 ]] && [[ $three -lt 10 ]] && [[ $four -lt 10 ]] && [[ $five -lt 10 ]] && [[ $six -lt 10 ]]
do
	value=$(($((RANDOM % 6))+1));
	dict[$key]=$value
	key=$(($key+1))
	case $value in
		1)one=$(($one+1))
		;;
		2)two=$(($two+1))
		;;
		3)three=$(($three+1))
		;;
		4)four=$(($four+1))
		;;
		5)five=$(($five+1))
		;;
		6)six=$(($six+1))
		;;
	esac
done

declare -A maxmin
maxmin[1]=$one
maxmin[2]=$two
maxmin[3]=$three
maxmin[4]=$four
maxmin[5]=$five
maxmin[6]=$six
max=0
min=10
echo "Dice Value => no.of times rolled"
for key in "${!maxmin[@]}"
do
echo "$key => ${maxmin[$key]}"
	if [ "${maxmin[$key]}" -gt "$max" ]
  	then
   	max=${maxmin[$key]}
		maxDice=$key
	fi
done

for key in "${!maxmin[@]}"
do
	if [ "${maxmin[$key]}" -lt "$min" ]
  	then
   	min=${maxmin[$key]}
		minDice=$key
	fi
done

echo "Number $maxDice rolled for maximum times"
echo "Number $minDice rolled for minimum times"