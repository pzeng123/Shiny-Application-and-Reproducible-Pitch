library(shiny)

shinyUI(fluidPage(
  titlePanel("Vehicle MPG Prediction Based on mtcars"),
  sidebarLayout(
    sidebarPanel(
      p("Transmission type and Number of cylinders of the vehicle:"),
      selectInput("am", "Transmission(0 = automatic, 1 = manual)", 
                  choices = mtcars$am, selected = mtcars$am[0]),
      selectInput("cyl", "Number of cylinders", 
                  choices = mtcars$cyl, selected = mtcars$cyl[0]),
      sliderInput("wt", "Weight (1000 lbs)", 
                  min = 1, max = 6, step = 0.5, value = 3),
      sliderInput("hp", "Gross horsepower", 
                  min = 50, max = 350, step = 10, value = 140)
    ),
    mainPanel(
      h3("Expected MPG is:"),
      h4(textOutput("mpgPred")),
      p("The prediction is based on multiple linear regression from the mtcars data set.")
    )
  )
)
)