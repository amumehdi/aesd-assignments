#/usr/bin/bash

#Accepts the following arguments:
#the first argument is a full path to a file (including filename) on the filesystem, referred to below as writefile; the second argument is a text string which will be written within this file, referred to below as writestr

#Exits with value 1 error and print statements if any of the arguments above were not specified

#Creates a new file with name and path writefile with content writestr, overwriting any existing file and creating the path if it doesn’t exist. Exits with value 1 and error print statement if the file could not be created

echo $1 $2
filesdir=$1
searchstr=$2

echo filesdir : $filesdir and searchstr : $searchstr

if [ -z "$1" ]
then 
	echo path not specified
	exit 1
fi

if [ -z "$2" ]
then
	echo string is not specified
        exit 1
fi

if [ -d filesdir ] && [ -n searchstr ]
then
	echo path or string are not valid
	exit 1
fi

echo $searchstr >> $filesdir



