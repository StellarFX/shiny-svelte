rToJavascript <- function (event, message) {
  #' Sends a message to the JS frontend
  #' @param message The message that shall be passed (JSON)
  session$sendCustomMessage(event, message %>% toJSON(auto_unbox = TRUE))
}
