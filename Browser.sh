#!/bin/bash
##
## ## Inital JAMFHelper window runs, offering users the option to install one of three internet browsers.

/Library/Application\ Support/JAMF/bin/jamfHelper.app/Contents/MacOS/jamfHelper -windowType "utility" -icon "/System/Library/CoreServices/Installer.app/Contents/Resources/Installer.icns" -heading "Internet Browser Needed" -description "You may chose between Chrome and Firefox."  -button1 "Firefox" -button2 "Chrome" -defaultbutton '2' alignHeading "center" -aligndescription "left"
		
	helper=`echo $?`
	echo " " $helper

## If users choses chrome, the chrome policy will be triggered.
	
	if [ "$helper" -eq "2" ]; then
	jamf policy -trigger chrome
	jamf killJAMFHelper	
	exit 1
	fi
	
## If users choses Firefox, the Firefox policy will be triggered.
	
	if [ "$helper" -eq "0" ]; then
	jamf policy -trigger firefox
	jamf killJAMFHelper	
	exit 1
	
	fi