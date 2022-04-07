a=$(( $RANDOM % 99 + 10 ))
b=$(( $RANDOM % 99 + 10 ))
c=$(( $RANDOM % 99 + 10 ))
d=$(( $RANDOM % 99 + 10 ))
e=$(( $RANDOM % 99 + 10 ))

x=$(( $a + $b + $c + $d + $e))
y=$((x / 5))

echo "Sum = $x"
echo "AVG = $y"


