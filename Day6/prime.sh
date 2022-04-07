read -p "Enter number: " n

for((i=2; i<=$(($n/2)); i++))
do
	res=$(( $n % $i ))
  	if [ $res -eq 0 ]
  	then
    		echo "not a prime number"
  		exit 0
	fi
done
echo "Prime number"