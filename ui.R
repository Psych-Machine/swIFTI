library(shiny)

# Define UI for data upload app ----
ui <- fluidPage(
  titlePanel("Uploading Files"),
  sidebarLayout(
    sidebarPanel(
      fileInput("file1", "Choose CSV File",
                multiple = FALSE,
                accept = c("text/csv",
                           "text/comma-separated-values,text/plain",
                           ".csv")),

      tags$hr(),
    
      checkboxInput("header", "Header", TRUE),
      tags$hr(),
      
      radioButtons("disp", "Display",
                   choices = c(Head = "head",
                               All = "all"),
                   selected = "head"),
      tags$hr(),
      
      
      
    ),
    
    mainPanel(
      tableOutput("contents")
      
    )
  )
  
)
