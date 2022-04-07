read -p "Enter 1st num: " x
read -p "Enter 2nd num: " y
read -p "Enter 3rd num: " z

a=$(($x + $y * $z))
b=$(($x % $y + $z))
c=$(($x + $y / $z))
d=$(($x * $y + $z))

echo $a $b $c $d

p=`echo $a $b $c $d | awk '{ print max(max(max($1, $2), $3), $4) } 
function max(m, n) {
	return m > n ? m : n
}'`
q=`echo "Min " $a $b $c $d | awk '{ print min(min(min($1, $2), $3), $4) } 
function min(m, n) {
	return m < n ? m : n
}'`

echo "Max num: $p"
echo "Min num: $q"