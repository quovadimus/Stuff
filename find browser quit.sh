#!/bin/bash
set -x

safari=$(osascript -e 'tell app "System Events" to count processes whose name is "Safari"')
chrome=$(osascript -e 'tell app "System Events" to count processes whose name is "Google Chrome"')
firefox=$(osascript -e 'tell app "System Events" to count processes whose name is "Firefox"')
opera=$(osascript -e 'tell app "System Events" to count processes whose name is "Opera"')



if [[ "$safari" != 0 ]] ; 
	then
 		mkdir -p /private/tmp/browsers
 		touch /private/tmp/browsers/safari
fi

 if [[ "$chrome" != 0 ]] ; 
	then
 		mkdir -p /private/tmp/browsers
 		touch /private/tmp/browsers/chrome
fi		 
if [[ "$firefox" != 0 ]] ; 
	then
 		mkdir -p /private/tmp/browsers
 		touch /private/tmp/browsers/firefox
fi		 
if [[ "$opera" != 0 ]] ; 
	then
 		mkdir -p /private/tmp/browsers
 		touch /private/tmp/browsers/opera
		 
		fi
		
		
osascript -e 'quit app "Google Chrome"'

osascript -e 'quit app "Firefox"'

osascript -e 'quit app "Safari"'

osascript -e 'quit app "Opera"'

exit
