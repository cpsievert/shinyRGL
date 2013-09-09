library(shiny)
library(shinyRGL)

#' Define UI for application that plots random 3d points
#' @author Jeff Allen \email{jeff@@trestletech.com}
shinyUI(pageWithSidebar(
  
  # Application title
  headerPanel("Shiny WebGL!"),
  
  # Sidebar with a slider input for number of points
  sidebarPanel(
    sliderInput("pts", 
                "Number of points:", 
                min = 10, 
                max = 1000, 
                value = 250),
    HTML("<hr />"),
    helpText(HTML("Created using <a href = \"http://github.com/trestletech/shinyRGL\">shinyRGL</a>."))
  ),
  
  # Show the generated 3d scatterplot
  mainPanel(
    tabsetPanel(id="tabs",
                tabPanel("Tab1", plotOutput("basic")),
                tabPanel("Tab2", webGLOutput("sctPlot"))
    )
  )
))