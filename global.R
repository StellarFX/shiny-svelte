library(shiny)
library(jsonlite)
library(magrittr)

source("./server.R")
source("./ui.R")

options(shiny.port = 7000)
shinyApp(ui, server)
