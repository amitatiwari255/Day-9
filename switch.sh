#/!/bin/bash  -x

isparttime=1
isfulltime=2
emprateprhr=20
randomCheck=$((RANDOM%3))

case $randomCheck in
             $isparttime )
                   emphrs=4
             ;;
             $isfulltime )
                   emphrs=8
             ;;
             *)
                   emphrs=0
             ;;
esac

salary=$(($emphrs*$emprateprhr))



