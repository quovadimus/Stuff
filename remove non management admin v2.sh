#!/bin/bash
#set -x

# #Set JSS API Values
apiURL="https://reston04.local:8443/JSSResource/computers/macaddress/"
apiUser="jssadmin"
apiPass="jssadmin"
MacAdd=$(networksetup -getmacaddress en0 | awk '{ print $3 }' | sed 's/:/./g')

#Use the API to get the Management Account name 
ManAccount=$(curl -s -u $apiUser:$apiPass $apiURL$MacAdd | xpath /computer/general/remote_management/management_username[1] | sed 's/<management_username>//;s/<\/management_username>//')


# Now find admin accounts on the machine and compare to the management account

for username in $(dscl . -read /Groups/admin GroupMembership | sed 's/GroupMembership: //'); do


# remove any users from the admin group that fit our criteria
	
   if [[ "$username" != $ManAccount ]] ; 
	then
 		echo "Deleting $username"
		 /usr/sbin/dseditgroup -o edit -d $username -t user admin
		fi
done