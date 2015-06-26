#!/bin/bash
set -x

username="me"

apiUsername="jssadmin"
apiPassword="jssadmin"

xmlFile="<computer><location><username>me</username></location></computer>"

jssServer="https://reston04.local:8443"

serialnumber=`ioreg -l | grep IOPlatformSerialNumber | cut -d " " -f 10 | tr -d '"'`


curl -s -k -u ${apiUsername}:${apiPassword} -H "Content-Type: application/xml"  ${jssServer}/JSSResource/computers/serialnumber/${serialnumber}  -X PUT -d ${xmlFile}


