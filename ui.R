#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

shinyUI(fluidPage(
    titlePanel("Predict Horsepower from MPG"),
    sidebarLayout(
        sidebarPanel(
            sliderInput("sliderMPG", "What is the MPG of the car:", min = 10, max = 35, value = 20),
            sliderInput("sliderCyl", "What is the number of cylinders: ", min = 4, max = 8, value = 6),
            sliderInput("sliderWt", "What is the weight of the car:", min = 1, max = 6, value = 3.325),
            checkboxInput("showModel1", "Show/Hide Model 1", value = TRUE),
            checkboxInput("showModel2", "Show/Hide Model 2", value = TRUE),
            checkboxInput("ShowModel3", "Show/Hide Model 3", value = TRUE),
            actionButton("do", "Show Data")
        ),
        mainPanel(
            plotOutput("plot1"),
            h3("Predicted Horsepower from Model 1:"),
            textOutput("pred1"),
            h3("Predicted Horsepower from Model 2:"),
            textOutput("pred2"),
            h3("Predicted Horsepower from Model 3:"),
            textOutput("pred3"),
            h3("The original training data:"),
            tableOutput("carS")
        )
    )
))
