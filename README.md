# sendText
R package to send a string as text using Twilio API services

usage: sendText(strText, toNumber = NULL, fromNumber = NULL, sid = NULL, token = NULL)

Use Sys.setenv() to set the fromNumber (Twilio assigned number), App SID, and authorization token. Else they can be passed directly 
in the function call. Example: 
Sys.setenv(twilio_number="yourtwilionumberasstring"); 
Sys.setenv(twilio_sid="yourtwilioappSID")
Sys.setenv(twilio_token="yourtwilioauthorizationtoken")

Install: fork and clone the git, or alternatively use the the Devtools to directly install the package from Github
devtools::install_github("prodipta/sendText")
