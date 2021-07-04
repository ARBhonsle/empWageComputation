#!/bin/bash -x
echo "Welcome to Employee Wage Computation Program"
empPresent=$((RANDOM%3))
wagePerHr=20
case $empPresent in
	2) echo "Employee Present"
	   hrsCalculated=8
		;;
	1) echo "Employee Part-Time"
	   hrsClaculated=8
		;;
	0) echo "Employee Absent"
	   hrsCalculated=0
		;;
esac
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
echo "Wage per Hr = $wagePerHr, Hrs calculated = $hrsCalculated"
echo "Salary = $salary"
