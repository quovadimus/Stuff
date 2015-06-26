#!/bin/bash


set -x

safari="/private/tmp/browsers/safari"
firefox="/private/tmp/browsers/firefox"
chrome="/private/tmp/browsers/chrome"
opera="/private/tmp/browsers/opera"

if [ -f "$safari" ]
then
	open -a /Applications/Safari.app
	rm /private/tmp/browsers/safari
fi

if [ -f "$firefox" ]
then
	open -a /Applications/Firefox.app
	rm /private/tmp/browsers/firefox
fi

if [ -f "$chrome" ]
then
	open -a /Applications/'Google Chrome.app'
	rm /private/tmp/browsers/chrome
fi

if [ -f "$opera" ]

then
	open -a /Applications/Opera.app
	rm /private/tmp/browsers/opera
fi