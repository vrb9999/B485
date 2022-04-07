target=21
min_diff=2
headcount=0
tailcount=0
while [ 1 ]
do
    flip=$(($RANDOM % 2 + 1))
    if [ $flip -eq 1 ]
    then
    echo Heads
    headcount=`expr $headcount + 1`
    else
    echo Tails
    tailcount=`expr $tailcount + 1`
    fi

    diff=$(( headcount - tailcount ))
    if(( headcount == target && diff >= min_diff ))
    then
        echo "Heads won by $diff points"
        break
    elif(( tailcount == target && ${diff} >= min_diff ))
    then
         echo "Tails won by ${diff} points"
         break
    fi
    
done

echo "No.of times Heads occured: $headcount"
echo "No.of times Tails occured: $tailcount"