#!/bin/bash -x
echo "Welcome to Employee Wage Computation Program"
empPresent=$((RANDOM%2))
if [ $empPresent -eq 1 ]
then
	echo "Employee Present"
else
	echo "Employee Absent"
fi
