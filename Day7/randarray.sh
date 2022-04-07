function rand(){
max=999
min=100
d=$((max-min+1))
r=$(($(($RANDOM % $d))+min))
echo $r
}

max=10
count=1
while [ "$count" -le $max ]
do
	num[$count]=$(rand)
	let "count += 1"
done

echo "${num[@]}"

l=0
l2=0

for((i=1; i<${#num[@]}; i++))
do
	if [[ $l -lt ${num[$i]} ]]
	then
		l2=$l
		l=${num[$i]}

	elif [[ ${num[$i]} -lt $l && ${num[$i]} -gt $l2 ]]
	then
		l2=${num[$i]}
	fi
done

echo "2nd largest number is: $l2"

for((i=1; i<${#num[@]}; i++))
do
	if [[ $l -gt ${num[$i]} ]]
	then
		l2=$l
		l=${num[$i]}

	elif [[ ${num[$i]} -gt $l && ${num[$i]} -lt $l2 ]]
	then
		l2=${num[$i]}
	fi
done

echo "2nd smallest number is: $l2"

l2=$(printf '%s\n' "${num[@]}" | sort -n | tail -2 | head -1)

echo "2nd largest num: $l2"

s2=$(printf '%s\n' "${num[@]}" | sort -n | head -2 | tail -1)

echo "2nd smallest num: $s2"