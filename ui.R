#Load the shiny package
library(shiny)

shinyUI(pageWithSidebar(

  #App title
  headerPanel("Calculating Your Pregnancy's Estimated Due Date (EDD)"),
  
  sidebarPanel(
    
    #Ask for user's name
    h3('Tell us your name.'),
    textInput(inputId="name", label = "Enter name:"),
    
    #Ask for user's LMP
    h3('What was the first day of your last menstrual period (LMP)?'),
    dateInput("date", "Enter date:"),
    
    #EDD will only be calculated upon clicking the button
    submitButton('Calculate')
  ),
  
  mainPanel(
    h3('Hi '),
    verbatimTextOutput("inputname"),
    h3('Since your LMP was on '),
    verbatimTextOutput("inputdate"),
    h3('Therefore your EDD will be on '),
    verbatimTextOutput("edd"),
    h3('Congratulations and may you have a smooth pregnancy!')
  )
))