a=$(( $RANDOM % 999 + 100 ))
b=$(( $RANDOM % 999 + 100 ))
c=$(( $RANDOM % 999 + 100 ))
d=$(( $RANDOM % 999 + 100 ))
e=$(( $RANDOM % 999 + 100 ))
echo $a $b $c $d $e
x=`echo $a $b $c $d $e | awk '{ print max(max(max(max($1, $2), $3), $4), $5) } 
function max(m, n) {
	return m > n ? m : n
}'`
y=`echo "Min " $a $b $c $d $e | awk '{ print min(min(min(min($1, $2), $3), $4), $5) } 
function min(m, n) {
	return m < n ? m : n
}'`
echo "Max num: $x"
echo "Min num: $y"

