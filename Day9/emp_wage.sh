echo "Welcome to Employee wage computation program"

wagePerHour=20
fullDayHours=8
partTimeHours=4
dailyWage=0
monthlyWage=0
workingDayInMonth=20
totalAttendedHours=0
totalAttendedDays=0
isAbsent=0
isPresent=1
isPartTime=2
dayCount=0
function getWorkHours() {
	case $attendance in
	1)
	totalAttendedHours=$(($totalAttendedHours+8))
	;;
	2)
	totalAttendedHours=$(($totalAttendedHours+4))
	;;
	3)
	totalAttendedHours=$(($totalAttendedHours+0))
	;;
	esac
}
while [ $totalAttendedDays -le 20 -o $totalAttendedHours -le 100 ]
do
	attendance=$((RANDOM%3))
	case $attendance in
	$isPresent)
	getWorkHours
	totalAttendedDays=$(($totalAttendedDays+1))
	dayCount=$(($dayCount+1))
	dailyWage[$dayCount]=$(($wagePerHour*$fullDayHours))
	;;
	$isPartTime)
	getWorkHours
	totalAttendedDays=$(($totalAttendedDays+1))
	dayCount=$(($dayCount+1))
	dailyWage[$dayCount]=$(($wagePerHour*$partTimeHours))
	;;
	$isAbsent)
	getWorkHours
	totalAttendedDays=$(($totalAttendedDays+0))
	dayCount=$(($dayCount+1))
	dailyWage[$dayCount]=$(($wagePerHour*$isAbsent))
	;;
	esac
done
monthlyWage=$(($totalAttendedHours*$wagePerHour))
for days in ${!dailyWage[@]}
do
	echo "for day $days Wage of Employee is " ${dailyWage[$days]}
done
echo "Monthly Wage of employee is :- "$monthlyWage