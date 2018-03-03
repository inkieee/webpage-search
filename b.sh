#!/bin/bash
############Variables############

#Hardcode Chrome's Path
#CHROME_PATH="/usr/share/applications/Google Chrome"
#echo $'\n'"Hardcoded: Google Chrome is"$'\n' $CHROME_PATH

NUM_SITES=""		#Number of sites
SITES=()			#Websites to view in array()

#Author: Copyourpie
#Firday, March 2, 2018
#################################



printf '\n%s\n\n' "To exit this script, press <control-C> at any point..."

#////Determine Chrome Path
#///

if [ "$CHROME_PATH" = "" ]
 then
	read -rep "What's the path to/command for Google Chrome? " CHROME_PATH
fi

echo $'\nGoogle Chrome is\n' "$CHROME_PATH"$'\n'


#////If you know the number of websites, then
#///

read -rp "How many websites do you want to open in new Chrome tabs?: " NUM_SITES
echo "Enter the url's of the websites:"

for ((ii=1;ii<=$NUM_SITES;ii++))
 do
	read -rp "$ii. " URL
	SITES+=($URL) 
done


#////Open Chrome tabs
#///

#Search list of running processes for Google Chrome
 ps -fax | grep -v grep | grep "$CHROME_PATH" > /dev/null

#Determine how to proceed, whether or not Chrome is running 
#$? is the last exit status of the previous command -- true=0/false=1

 if [ "$?" = 0 ]
  then				
	echo "Chrome is running."
  else
	echo "Chrome is not running."
	#Initiate instance of Chrome
	START_CHROME="$CHROME_PATH & disown"
 fi

#Open in a new window or not
 while true
  do
	read -rp "Do you want to open your tabs in a new window? [y/n] : " answer
 	case $answer in
		[yY]|[yY][eE][sS] ) echo "yes"
				 	 eval "$START_CHROME"
					 printf '\n%s\n' "Google Chrome started! Hooray!"
					 sleep 3
					#Open new google chrome window to first website
					 eval $CHROME_PATH --new-window ${SITES[0]}
					#Remove first website url from SITES array
					 SITES=("${SITES[@]:1}")
					break ;; 

	        [nN]|[nN][oO] ) echo "no"
					 eval "$START_CHROME"
					 printf '\n%s\n' "Google Chrome started! Hooray!"
					 sleep 3
					 break ;;
		
	    	  	        * )echo "Please enter [y/n]"
	esac
done


#Open tabs for other URL's
 for ii in "${SITES[@]}"
  do
 	eval "$CHROME_PATH" "$ii"
  done
####SCRAP####
###May be a useful command to use somehow
#
#read -rap "Enter a website to add:" variableSITES
: <<'end_long_comment'
#echo ${SITES[@]}
#echo "The websites are:"
#for jj in "${SITES[@]}
#  do
#	read -p "$i." SITES[i] done
#done
end_long_comment
###SCRAP####
