#!/bin/bash -x
echo "Welcome to the employee wage page"
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> 3_ucempParttimeWage
isPartTime=1;
isFullTime=2;
<<<<<<< HEAD
maxHrsInMonth=10
empRatePerHr=20
numWorkingDays=20

totalEmpHrs=0
totalWorkingDays=0
function getWorkingHours(){
	case $1 in
		$isPartTime)
			empHrs=4
			;;
		$isFullTime)
			empHrs=8
			;;
		*)
			empHrs=0
			;;
	esac
	echo $empHrs
}
function calDailyWages() {
	totalWorkHrs=$1;
	wages=$(( $totalWorkHrs*$empRatePerHr ))
	echo $wages;
=======
=======
>>>>>>> 2_ucempDailyWage
isPresent=1;
randomCheck=$(( RANDOM%2 ));
if [$isPresent -eq $randomCheck ];
=======
empRatePerHr=20;
randomCheck=$(( RANDOM%3 ));
if [ $isFullTime -eq $randomCheck ];
>>>>>>> 3_ucempParttimeWage
then
echo "Employee is Present";
else
echo "Employee is absent";
fi
>>>>>>> 1_ucempPresentOrAbsent

while [[ $totalEmpHrs -lt $maxHrsInMonth && $totalWorkingDays -lt $numWorkingDays ]]
do
	totalWorkingDays=$(($totalWorkingDays+1))
	empHrs="$(getWorkingHours $(( RANDOM%3 )) )"
	totalEmpHrs=$(($totalEmpHrs+$empHrs))
	empDailyWages[$totalWorkingDays]="$(calDailyWages $empHrs)"
done
<<<<<<< HEAD
totalSalary="$(calDailyWages $totalEmpHrs)"
echo "daily wages :"
    ${empDailyWages[@]}
echo "All Keys :"${!empDailyWages[@]}
=======



>>>>>>> 6_ucTotalWorkinghoursRday/month
=======


>>>>>>> 0_ucwelcomemessage
