#/usr/bin/bash

#Accepts the following runtime arguments:
#the first argument is a path to a directory on the filesystem, referred to below as filesdir; the second argument is a text string which will be searched within these files, referred to below as searchstr

#Exits with return value 1 error and print statements if any of the parameters above were not specified


#Exits with return value 1 error and print statements if filesdir does not represent a directory on the filesystem


#Prints a message 
#"The number of files are X and the number of matching lines are Y"
#where X is the number of files in the directory and all subdirectories and Y is the number of matching lines found in respective files, where a matching line refers to a line which contains searchstr (and may also contain additional content).

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

#set -x
allfile=$( ls $filesdir | wc -w )
#echo $(ls -R)
#echo $(ls -R $filesdir)
#echo $allfile

#echo $allfile
allhave=$( grep -r "$searchstr" $filesdir | wc -l )  
#set +x 
echo The number of files are $allfile and the number of matching lines are $allhave

