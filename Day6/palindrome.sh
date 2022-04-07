read -p "Enter the number: " n

function palindrome(){
num=$n
rev=0
while [ $n -gt 0 ]
do
a=$(( $n % 10 ))
n=$(( $n / 10 ))
rev=$( echo ${rev}${a} )
done

if [ $num -eq $rev ]
then
    echo "Number is palindrome"
else
    echo "Number is not palindrome"
fi
}
r=`palindrome $n`
echo "$r"