#!/bin/bash -x
isparttime=1
isfulltime=2
empRatePerHr=20
numofworkingdays=100
maxRateInMonth=100

totalEmpHr=0
totalWorkingDays=0

while [[ $totalEmpHr -lt $maxRateInMonth &&
         $totalWorkingDays -lt $numofworkingdays ]]

do
      (( totalWorkingDays++ ))
      randomCheck=$((RANDOM%3))
case  $randomCheck in
                      $isparttime )
                        empHrs=4
                      ;;
                      $isfulltime )
                        empHrs=8
                      ;;
                      *)
                         empHrs=0
                      ;;
esac
         totalEmpHr=$(($totalEmpHr+$empHrs))
done
totalsalary=$(($totalEmpHr*$empRatePerHr))
