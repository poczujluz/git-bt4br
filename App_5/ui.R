library(shiny)



ui <- fluidPage(
  titlePanel("Gene Expression Viewer"),
  
  sidebarLayout(
    sidebarPanel(
      selectInput("gene", "Select a Gene ID:", choices = NULL),
      actionButton("update", "Update Plot")
    ),
    
    mainPanel(
      plotOutput("genePlot")
    )
  )
)