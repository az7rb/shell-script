#!/bin/bash  
# by az7rb

	Help()
{
   # Display Help
   echo "options:"
   echo ""
   echo "-h  Help"
   echo "-u | Example: $0 -u az7rb"
   echo ""
}
		 
   
	# Request
	Twitter() {
	requestsearch="$(curl -s https://tweettunnel.com/$user | grep "Followers" | cut -d':' -f26 | grep '[0-9]' | awk -F\; '{ print $4 }' | sed 's/<span style=\"color//' | awk '{print "Followers: " $0 }')"
	

echo ""
echo $requestsearch > u
echo "user: $user"
cat u
rm -r u

}

if [ -z $1 ]
        then
                Help
                exit
        else
                user=$2
                
fi

while getopts "h|u|" option; do
   case $option in
      h)
   Help
         ;;
      u) 
	 Twitter
         ;;
     *)
   Help
         ;;
		 
   esac
done
