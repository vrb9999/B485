declare -a num
for i in {1..100}
do
    if [[ $(($i % 11)) -eq 0 ]]
    then
        num+=($i)
    fi
done

echo ${num[@]}