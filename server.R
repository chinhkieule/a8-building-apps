library(shiny)
library(plotly)
library(dplyr)
#source("chart.R")

# This is the server file
data <- iris
data <- mutate(data, Sepal.Size = Sepal.Length * Sepal.Width)

shinyServer(function(input, output) {
  
  # Build chart with user input
  output$scatter <- renderPlotly({
    new_data <- filter(data, 
                       Species == input$species, 
                       Sepal.Size <= input$sepalsize)
    
    plot_ly(new_data, x = Petal.Length, y = Petal.Width, mode = "markers", 
                 color = Petal.Width, colors = "Set2")
    
    layout(title = "Iris Petal and Sepal Data")
 
  })
})