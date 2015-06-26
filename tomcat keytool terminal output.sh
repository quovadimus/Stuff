jennifer00:~ ladmin$  keytool -genkey -alias tomcat -keyalg RSA -keysize 2048 -keypass "password" -storepass "password" -keystore /Library/JSS/Tomcat/keystore3.jks -ext san=dns:jssadmin.jennifer.com,ip:192.168.1.98
What is your first and last name?
  [Unknown]:  jss.jennifer.com
What is the name of your organizational unit?
  [Unknown]:  MacOS
What is the name of your organization?
  [Unknown]:  jennifer
What is the name of your City or Locality?
  [Unknown]:  Fairfax
What is the name of your State or Province?
  [Unknown]:  VA
What is the two-letter country code for this unit?
  [Unknown]:  US
Is CN=jss.jennifer.com, OU=MacOS, O=jennifer, L=Fairfax, ST=VA, C=US correct?
  [no]:  yes

jennifer00:~ ladmin$ keytool -certreq -keyalg RSA -alias tomcat -file /Library/JSS/Tomcat/certreq3.csr -keystore /Library/JSS/Tomcat/keystore3.jks -ext san=dns:jssadmin.jennifer.com,ip:192.168.1.98
Enter keystore password:  
jennifer00:~ ladmin$ cat /Library/JSS/Tomcat/certreq3.csr 
-----BEGIN NEW CERTIFICATE REQUEST-----
MIIDBzCCAe8CAQAwajELMAkGA1UEBhMCVVMxCzAJBgNVBAgTAlZBMRAwDgYDVQQHEwdGYWlyZmF4
MREwDwYDVQQKEwhqZW5uaWZlcjEOMAwGA1UECxMFTWFjT1MxGTAXBgNVBAMTEGpzcy5qZW5uaWZl
ci5jb20wggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCDCVQxPYbOH6T7rP8w4NOSuClT
akU++I7+ehXe37z043QAb74JZPQxS6UczTn1eELNlWAuefcOpyJlXVsCr2lIDJ9WPInOF4MZQmI8
bIGnDy8Uyu82xEd9XpIVgeddGLd4KqKZvYqbM8XuQVeZzDx2H+kXBBMFqAiu1rJEywFO7ot9klwM
mqAVxQK9F5NPiab4VZmlrVjsHDEEIj4wW0mURarQH2tGIbq792V3wXgpb99o8HpgFmuT7ot4BnS2
yADfRP3UWe561U/xFjL7hpe+ajAaNnwr2Gxytnn/gs5zMhIgEBQPbpPL8NNcaGw02IK/BbF7lEQb
n/CyV/8UFqXZAgMBAAGgWDBWBgkqhkiG9w0BCQ4xSTBHMCYGA1UdEQQfMB2CFWpzc2FkbWluLmpl
bm5pZmVyLmNvbYcEwKgBYjAdBgNVHQ4EFgQU1TUtoRm7OVFBQ8ZltNdxe3xABlIwDQYJKoZIhvcN
AQELBQADggEBADL21vSRnrKB2NCr304iXGYNHKsk+d/5Nvhj3d8j42b8OziOXYgcDdD4tsMz+xIw
Q1TOIggRe+uEpeZzH4dnGsxn0bqpzvpRxx6qeY6clpA6hOS8pSEJ5iODYQEtlizqBzCQuprpy5hp
whx+/e7O5ag6IpRXXP1i2+hoivKFTiPO4LPc6LaIxbXNgcVelC4Bnje57mB2S9uloxQ6trA4VDjh
wk6EeHXuXmLExzsFWDYNdQuFQzpr20MHgb1W8ik6CXmYbiDD/SK5R0a9nZG3kMORJJ8jTwLz32nX
Ie5pENlripDTGHnK+ivu/Na0j3+b+IO6nrFsP1S7H/Z4NhlCrKA=
-----END NEW CERTIFICATE REQUEST-----
jennifer00:~ ladmin$ keytool -import -alias root -keystore /Library/JSS/Tomcat/keystore3.jks -trustcacerts -file ~/Downloads/CN\=CCE\ JSS\ Built-in\ Certificate\ Authority.pem 
Enter keystore password:  
Owner: CN=CCE JSS Built-in Certificate Authority
Issuer: CN=CCE JSS Built-in Certificate Authority
Serial number: f22761ae
Valid from: Mon Jun 22 10:01:46 EDT 2015 until: Tue Jun 24 10:01:46 EDT 2025
Certificate fingerprints:
	 MD5:  E4:C3:BF:B2:32:56:F2:5E:4B:D1:CA:A3:E0:00:99:99
	 SHA1: 96:9D:EC:90:68:64:8B:C7:D7:41:98:16:37:A1:63:EC:83:06:0F:F1
	 SHA256: 83:4A:7E:5E:20:2E:0A:7B:19:15:14:8D:05:2D:D6:73:D2:42:D7:04:28:EB:F9:6D:13:65:EC:DB:7D:7F:AF:2E
	 Signature algorithm name: SHA256withRSA
	 Version: 3

Extensions: 

#1: ObjectId: 2.5.29.35 Criticality=false
AuthorityKeyIdentifier [
KeyIdentifier [
0000: 5B BE FF 09 D7 AA 89 1B   08 69 BF 71 F6 0E EF DF  [........i.q....
0010: F8 EE E4 7D                                        ....
]
]

#2: ObjectId: 2.5.29.19 Criticality=true
BasicConstraints:[
  CA:true
  PathLen:2147483647
]

#3: ObjectId: 2.5.29.31 Criticality=false
CRLDistributionPoints [
  [DistributionPoint:
     [URIName: https://jennifer.local:8443/CA/JAMFCRLServlet]
]]

#4: ObjectId: 2.5.29.37 Criticality=false
ExtendedKeyUsages [
  serverAuth
]

#5: ObjectId: 2.5.29.15 Criticality=true
KeyUsage [
  DigitalSignature
  Key_Encipherment
  Key_CertSign
  Crl_Sign
]

#6: ObjectId: 2.5.29.14 Criticality=false
SubjectKeyIdentifier [
KeyIdentifier [
0000: 5B BE FF 09 D7 AA 89 1B   08 69 BF 71 F6 0E EF DF  [........i.q....
0010: F8 EE E4 7D                                        ....
]
]

Trust this certificate? [no]:  yes
Certificate was added to keystore
jennifer00:~ ladmin$ keytool -import -alias tomcat -keystore /Library/JSS/Tomcat/keystore3.jks -trustcacerts -file ~/Downloads/CN\=jss.jennifer.com\,OU\=MacOS\,O\=jennifer\,L\=Fairfax\,ST\=VA\,C\=US-3.pem 
Enter keystore password:  
Certificate reply was installed in keystore
jennifer00:~ ladmin$ 
