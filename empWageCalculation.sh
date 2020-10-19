#!/bin/bash -x
echo "Welcome to the employee wage page"

isPresent=1;
randomCheck=$(( RANDOM%2 ));
if [$isPresent -eq $randomCheck ];
then
echo "Employee is Present";
else
echo "Employee is absent";
fi



