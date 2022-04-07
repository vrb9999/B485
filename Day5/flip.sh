flip=$(($RANDOM % 2 + 1))

if [ $flip -eq 1 ]
then
echo Heads
else
echo Tails
fi
