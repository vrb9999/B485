read -p "Enter number: " n

function harmonic(){
printf "H = "
for((i=1; i<=$n; i++))
do
	if [ $i = $n ]
	then 
		printf "1/$i"
	else
		printf "1/$i + "
	fi
done
}

harmonic "$1"