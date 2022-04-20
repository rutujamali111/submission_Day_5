#!/bin/bash -x
function DegCtoDegF(){
	degC=$1;
	if [[ $degC -gt 0 && $degC -lt 100 ]]
	then
		div95=`echo 9 5 | awk '{print $1/$2}'`
		mult=`echo $degC $div95 | awk '{print $1*$2}'`

		degF=`echo $mult 32 | awk '{print $1*$2}'`
		echo $degF;
	else
		echo "Temperature is not within freezing point"
	fi
}



function DegFtoDegC(){
	degF=$1
	if [[ $degF -gt 32 && $degF -lt 212 ]]
	then
		Sub=`echo $degF 32 | awk '{print $1-$2}'`
		div=`echo 5 9 | awk '{print $1/$2}'`
		degC=`echo $Sub $div | awk '{print $1*$2}'`
		echo $degC
	else
		echo "Temperature is not within freezing point"
	fi
}

echo "What conversion you want to do?"

echo "1. degC to degF"
echo "2. degF to degC"
 
read -p "Select the conversion : " selection

case $selection in
1)
	read -p "Enter the temperature in celcius :" degC;
	degF=$(DegCtoDegF $degC);
	echo "$degC degC = $degF degF";
	;;
2)
	read -p "Enter the temperature in farenheight :" degF;
	degC=$(DegFtoDegC $degF)
	echo "$degF degF = $degC degC";
	;;
*)
	echo "Invalid Selection ";
	;;
esac
