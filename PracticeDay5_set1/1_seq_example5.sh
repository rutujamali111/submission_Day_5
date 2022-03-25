#!/bin/bash -x
#Unit conversion
read -p "Enter units in inch" inches
feets=`echo $inches 12 | awk '{print $1/12}'`
echo $feets

#Area of rectangular plot in meters
read -p "enter length of plot in feets:" length
read -p "enter breadth of plot in feets:" breadth
area=$(( length*breadth ))  
areaInMeters=`echo $area 0.305 | awk '{print $1/$2}'`
echo "Area of plot in meters : " $areaInMeters

#Area of plots in acres
totalArea=`echo $areaInMeters 25 | awk '{print $1*$2}'`
AreaInAcres=`echo $totalArea 4046.86 | awk '{print $1/$2}'`
echo "Total Area of 25 plots is ;$AreaInAcres  Acres"
