#!/bin/bash -x
echo "Welcome to Employee Wage Computation Program"
declare -a dailySalary
function workHrsCalculation()
{
	totWorkingHr=$1
	wagePerHr=$2
	hrsCalc=0
	for((day=0;day<20 && $hrsCalc<$totWorkingHr;day++))
	do
		empPresent=$((RANDOM%3))
		case $empPresent in
			2) #echo "Employee Present"
			   hrsCalc=$(($hrsCalc+8))
			   hrs=8
				;;
			1) #echo "Employee Part-Time"
			   hrsCalc=$(($hrsCalc+8))
			   hrs=8
				;;
			0) #echo "Employee Absent"
			   hrsCalc=$hrsCalc
			   hrs=0
				;;
		esac
		dailySalary[$day]=$(($wagePerHr*$hrs))
	done
	echo "Days worked=$day"
	return $hrsCalc
}
wagePerHr=20
hrs=100
echo "Wage per Hr = $wagePerHr"
workHrsCalculation $hrs $wagePerHr
hrsCalc=$?
echo "Hrs calculated = $hrsCalc"
echo "Daily Salary:"
echo "${dailySalary[@]}"
salary=$(($wagePerHr*$hrsCalc))
echo "Total Salary = $salary"
