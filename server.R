server <- function(input, output) {
  
  output$contents <- renderTable({
    req(input$file1)
    
    df <- read.csv(input$file1$datapath,
                   header = input$header,
                   sep = ",")
    
    if(input$disp == "head") {
      return(head(df))
    }
    else {
      return(df)
    }
  })
}
