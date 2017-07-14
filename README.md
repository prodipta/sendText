# sendText

The goal of this R package (sendText) is to provide a method to use the Twilio rest API to send a text message (SMS) from within R. This requires signing up for the service at Twilio (the basic option is free). Use Sys.setenv() to set the fromNumber (Twilio assigned number), App SID, and authorization token. Else they can be passed directly in the function call. 

## Installation

You can install bsoption from github with:

```R
# install.packages("devtools")
devtools::install_github("prodipta/sendText")
```

## Example

This is an example which shows you how to set up the environment for the package.

```R
Sys.setenv(twilio_number="yourtwilionumberasstring")
Sys.setenv(twilio_sid="yourtwilioappSID")
Sys.setenv(twilio_token="yourtwilioauthorizationtoken") 
```

This shows the use of the function
```R
?sendText
sendText(someText,phoneNumber)
# this assumes the enviromnet is correctly set up as shown above
# the phone number above should be in text format,and is the one reveiving the text
```



