#!/bin/bash -x
echo "Welcome to Employee Wage Computation Program"
function workHrsCalculation()
{
	totWorkingHr=$1
	hrsCalc=0
	for((day=0;day<20 && $hrsCalc<$totWorkingHr;day++))
	do
		empPresent=$((RANDOM%3))
		case $empPresent in
			2) #echo "Employee Present"
			   hrsCalc=$(($hrsCalc+8))
				;;
			1) #echo "Employee Part-Time"
			   hrsCalc=$(($hrsCalc+8))
				;;
			0) #echo "Employee Absent"
			   hrsCalc=$(($hrsCalc+0))
				;;
		esac
	done
	echo "Days worked=$day"
	return $hrsCalc
}

wagePerHr=20
hrs=100
echo "Wage per Hr = $wagePerHr"

workHrsCalculation $hrs
hrsCalc=$?
echo "Hrs calculated = $hrsCalc"

salary=$(($wagePerHr*$hrsCalc))
echo "Salary = $salary"
