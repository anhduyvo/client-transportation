# demo-news
demo news

# generate sh certificates
Anhs-MacBook-Pro:demo-news akait$ sh ./scripts/generate-ssl-certs.sh
Generating self-signed certificates...
Generating RSA private key, 4096 bit long modulus
.................................................................................++
...............................++
e is 65537 (0x10001)
You are about to be asked to enter information that will be incorporated
into your certificate request.
What you are about to enter is what is called a Distinguished Name or a DN.
There are quite a few fields but you can leave some blank
For some fields there will be a default value,
If you enter '.', the field will be left blank.
-----
Country Name (2 letter code) []:VN
State or Province Name (full name) []:HCM
Locality Name (eg, city) []:HCM
Organization Name (eg, company) []:Home
Organizational Unit Name (eg, section) []:DEV
Common Name (eg, fully qualified host name) []:localhost
Email Address []:voduyanh1984@yahoo.com

Please enter the following 'extra' attributes
to be sent with your certificate request
A challenge password []:P@ssw0rd
Signature ok
subject=/C=VN/ST=HCM/L=HCM/O=Home/OU=DEV/CN=localhost/emailAddress=voduyanh1984@yahoo.com
Getting Private key