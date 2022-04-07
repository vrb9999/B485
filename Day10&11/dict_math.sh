read -p "Enter 1st number: " a
read -p "Enter 2nd number: " b
read -p "Enter 3rd number: " c
echo ""
echo "Dictionary"
declare -A res
p=$(($a + $b * $c))
res+=( [p]=$p )
q=$(($a * $b + $c))
res+=( [q]=$q )
r=$(($c + $a / $b))
res+=( [r]=$r )
s=$(($a % $b + $c))
res+=( [s]=$s )

echo "$a + $b * $c = ${res[p]}"
echo "$a * $b + $c = ${res[q]}"
echo "$c + $a / $b = ${res[r]}"
echo "$a % $b + $c = ${res[s]}"
echo ""
echo "Array"
declare -a arr
arr+=( ${res[p]} )
arr+=( ${res[q]} )
arr+=( ${res[r]} )
arr+=( ${res[s]} )

echo ${arr[@]}
echo ""
sort_desc=$(printf '%s ' "${arr[@]}" | sort -r)
echo "Descending order: $sort_desc"

sort_asc=$(printf '%s ' "${arr[@]}" | sort)
echo "Ascending order: $sort_asc"