# server.R
source("helpers.R")
counties <- readRDS("data/counties.rds")
library(maps)

shinyServer(
  function(input, output) {
    
    output$map <- renderPlot({
      data <- switch(input$var, 
                     "Percent White" = counties$white,
                     "Percent Black" = counties$black,
                     "Percent Hispanic" = counties$hispanic,
                     "Percent Asian" = counties$asian)
      
      colour <- switch(input$var, 
                     "Percent White" = "yellow",
                     "Percent Black" = "violet",
                     "Percent Hispanic" = "springgreen",
                     "Percent Asian" = "sienna")
      
      titleText <- switch(input$var, 
                          "Percent White" = "% of Whites",
                          "Percent Black" = "% of Blacks",
                          "Percent Hispanic" = "% of Hispanics",
                          "Percent Asian" = "% of Asians")
      
      percent_map(var = data, color = colour, legend.title = titleText, max = input$range[2], min = input$range[1])
    })
    
  }
    )