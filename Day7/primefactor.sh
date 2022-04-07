read -p "Enter num: " n
echo "factors of"
echo $n | factor
echo ""
index=0
for(( i=2; i<=$n; i++ ))
do
   while [ $(($n%$i)) -eq 0 ]
   do
      factor[$index]=$i
		index=$index+1
      n=$(($n/$i))
   done
done
echo "Array"
echo ${factor[@]}