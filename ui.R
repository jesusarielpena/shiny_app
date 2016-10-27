# ui.R

shinyUI(fluidPage(
  titlePanel("Census Visualizations of the United States"),
  
  sidebarLayout(
    sidebarPanel(
      helpText("This app was develped to create demographic maps with 
               information from the 2010 US Census clasifying by different races"),
      
      selectInput("var", 
                  label = "Choose a variable to display",
                  choices = c("Percent White", "Percent Black",
                              "Percent Hispanic", "Percent Asian"),
                  selected = "Percent White"),
      
      sliderInput("range", 
                  label = "Range of interest:",
                  min = 0, max = 100, value = c(0, 100))
      ),
    
    mainPanel(plotOutput("map"))
  )
))
