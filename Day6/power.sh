read -p "Enter number: " n

function power(){
for((i=0; i<=$n; i++))
do
	echo "$((2**$i))"
done
}

power "$1"
