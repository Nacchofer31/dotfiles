#!/bin/bash

monnum=$(xrandr -q | grep -w connected | awk '{print $1}' |  sed 's/ \+/\n/g' | wc -l)

if [ $monnum == 1 ]
then
bspc monitor -d 1 2 3 4 5 6 7 8 9
elif [ $monnum == 2 ]
then
mon1=$(xrandr -q | grep -w connected | awk '{print $1}' |  sed 's/ \+/\n/g' | head -n 1)
mon2=$(xrandr -q | grep -w connected | awk '{print $1}' |  sed 's/ \+/\n/g' | tail -n 1)
bspc monitor $mon2 -d 1 2 3 4 5 6 7
bspc monitor $mon1 -d 8 9
elif [ $monnum == 3 ]
then
mon1=$(xrandr -q | grep -w connected | awk '{print $1}' |  sed 's/ \+/\n/g' | awk NR==1)
mon2=$(xrandr -q | grep -w connected | awk '{print $1}' |  sed 's/ \+/\n/g' | awk NR==2)
mon3=$(xrandr -q | grep -w connected | awk '{print $1}' |  sed 's/ \+/\n/g' | awk NR==3)

bspc monitor $mon1 -d 1 2 3 4
bspc monitor $mon2 -d 5 6 7
bspc monitor $mon3 -d 8 9 0
fi
