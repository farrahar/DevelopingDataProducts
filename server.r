#Calculating EDD using Naegele's rule
duedate <- function(date) date + 365 - 90 + 7

shinyServer(
  function(input, output) {
    output$inputname <- renderPrint({input$name})
    output$inputdate <- renderPrint({input$date})
    output$edd <- renderPrint({duedate(input$date)})
  }
)