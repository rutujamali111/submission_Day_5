#!/bin/bash -x
read -p "Enter number" n
isprime=0
ispalindrome=0
function checkPrime
{
	i=2
	flag=0
	while test $i -le `expr $n / 2`
	do
	if test `expr $n % $i` -eq 0
	then
	flag=1
	fi
	i=`expr $i + 1`
	done
 	
	if test $flag -eq 0
	then 
	isprime=1
	echo "prime"
	fi
}

function checkPalindrome
{
	number=$n
	reverse=0
	while [ $n -gt 0 ]
	do
	a=` expr $n % 10 `
	n=` expr $n / 10 `
	reverse=` expr $reverse \* 10 + $a`
	done

	if [ $number -eq $reverse ]
	then
	ispalindrome=1
	echo "palindrom"	
	fi
}
checkPrime $n
checkPalindrome $n
echo "$isprime"
if [ $isprime -eq 1 ] && [ $ispalindrome -eq 1 ]
then
echo "NUmber is palindrome also prime"
fi
