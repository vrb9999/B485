read -p "Enter starting number: " m
read -p "Enter end number: " n

for ((a=$m; a<=$n; a++))
do
    f=0
    for ((i=2; i<=$(( $a - 1 )); i++))
    do 
        if [ $(( $a % $i )) -eq 0 ]
        then
            f=1
            break
        fi
    done
    if [ $f -eq 0 ]
    then
    echo $a
    fi
done