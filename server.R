server <- function (input, output, session) {
  source("event_bus.R", local = TRUE)
  
  observeEvent(input$double, {
    print(paste0("New message from JS: ", input$double))
    
    rToJavascript("count.set", input$double * 2)
  })

  # This allows reconnection to the server if the connection is lost  
  session$allowReconnect("force")
}