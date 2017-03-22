#' send a given text to a phone as SMS using Twilio API
#' @description send a string as text message using Twilio API service
#' @param strText a string - the message to send
#' @param toNumber the target number of the SMS
#' @param fromNumber the Twilio assigned number for the user
#' @param sid Twilio account SID
#' @param token Twilio authorization token
#' @return HTTP response from the POST method from Twilio API
#' @details If the parameters fromNumber, sid or token are skipped, global
#' variables are searched; which can be set using the Sys.setenv() function
#' call with parameters as twilio_number, twilio_sid and twilio_token
#' respectivly. Example Sys.setenv(twilio_number="yourtwilionumberasstring").
#' The function passes on the http message from the API post call and it is up
#' to the user to parse and interpret the response.
#' @export

sendText <- function(strText,toNumber=NULL, fromNumber=NULL, sid=NULL,
                     token=NULL){

  if(is.null(sid))sid<- Sys.getenv("twilio_sid")
  if(is.null(token))token<- Sys.getenv("twilio_token")
  if(is.null(fromNumber))fromNumber<- Sys.getenv("twilio_number")
  if(is.null(toNumber))stop("Number to send the text to is missing!")
  fromNumber <- as.character(fromNumber)
  toNumber <- as.character(toNumber)

  url <- paste0("https://",sid,":",token,"@api.twilio.com/2010-04-01/Accounts/",
                sid,"/Messages.xml")

  r <- httr::POST(url, httr::authenticate(sid, token, type = "basic"),
            body = list(
              From = fromNumber,
              To = toNumber,
              Body = strText
            )
  )
  return(r)
}

