#!/bin/bash

echo "
+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
|      ..| Number Book v1.0 |..       |
|           Twitter: az7rb            |
+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
	"
	
	Help()
{
   # Display Help
   echo "options:"
   echo ""
   echo "-h     Help"
   echo "-n     Search namber book | Example: $0 -n 0512345678"
   echo ""
}
	# Request
	def() {
	requestsearch="$(curl -s "https://rdod.live/contacts_api/api.php?getName=true&phone=$req")"
		 
			 echo $requestsearch > req
			 cat -n req | jq | egrep "name" | cut -d'"' -f4 | sort -u | uniq -u 
			 rm req
			 echo ""
}		 
   

if [ -z $1 ]
        then
                Help
                exit
        else
                req=$2
                
fi

while getopts "h|n|" option; do
   case $option in
      h) # display Help
         Help
         ;;
      n) # Search 
	 def
         ;;
     *) # Invalid option
          Help
          ;;
		 
   esac
done
