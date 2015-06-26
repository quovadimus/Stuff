#!/usr/bin/perl -w
use strict;

our $CD = "/Applications/CocoaDialog.app/Contents/MacOS/CocoaDialog";

my $rv = `$CD dropdown --title "Browser install" --no-newline \\
--text "Which browser do you want to install?" \\
--items "Chrome" "Firefox" "Opera" --button1 'Install'`; 

my ($button, $item) = split /\n/, $rv;

if ($button == 1) {
print "User chose: ";
if ($item == 0) {
system("jamf policy -trigger chrome");
print "Chrome";
} elsif ($item == 1) {
system("jamf policy -trigger firefox");
} elsif ($item == 2) {
system("jamf policy -trigger opera");
}
} else {
print "Error";
}