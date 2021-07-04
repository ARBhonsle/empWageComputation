#!/bin/bash -x
echo "Welcome to Employee Wage Computation Program"
empPresent=$((RANDOM%2))
wagePerHr=20
if [ $empPresent -eq 1 ]
then
	echo "Employee Present"
	HrsCalculated=8
else
	echo "Employee Absent"
	HrsCalculated=0
fi
salary=$(($wagePerHr*$HrsCalculated))
echo "Wage per Hr = $wagePerHr Hrs calculated = $HrsCalculated"
echo "Salary = $salary"
