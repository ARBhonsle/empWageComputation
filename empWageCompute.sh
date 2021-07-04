#!/bin/bash -x
echo "Welcome to Employee Wage Computation Program"
wagePerHr=20
totWorkingHr=100
hrsCalculated=0
for((day=1;day<=20 && $hrsCalculated<$totWorkingHr;day++))
do
	empPresent=$((RANDOM%3))
	case $empPresent in
		2) #echo "Employee Present"
		   ((hrsCalculated+=8))
			;;
		1) #echo "Employee Part-Time"
		   ((hrsClaculated+=8))
			;;
		0) #echo "Employee Absent"
		   ((hrsCalculated+=0))
			;;
	esac
done
#if [ $empPresent -eq 2 ]
#then
#	echo "Employee Present"
#	HrsCalculated=8
#elif [ $empPresent -eq 1 ]
#then
#	echo "Employee Part-time"
#	HrsCalculated=8
#else
#	echo "Employee Absent"
#	HrsCalculated=0
#fi
salary=$(($wagePerHr*$hrsCalculated))
echo "Wage per Hr = $wagePerHr"
echo "Days worked=$(($day-1)), Hrs calculated = $hrsCalculated"
echo "Salary = $salary"
