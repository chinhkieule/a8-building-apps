library(shiny)
library(plotly)

shinyUI(fluidPage(
  titlePanel("Iris Data Visualization"),
  
  # Sidebar layout for widgets
  sidebarLayout(
    
    sidebarPanel(
      
      # Drop down menu to select species
      selectInput("species", label = h3("Select Species"),
                  choices = list("Setosa" = "setosa", "Versicolor" = "versicolor", "Virginica" = "virginica"),
                  selected = "setosa"),
      
      # Slider to select number of observations to display
      sliderInput("sepalsize", label = h3("Sepal Size"),
                  min = 10.00, max = 30.02, value = 30.02, step = 0.1)
    ),
    
    mainPanel(
      # Render scatter plot 
      plotlyOutput('scatter')
    )
  )
))


