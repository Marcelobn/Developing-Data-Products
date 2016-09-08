z <- seq(-5,5, length = 10000)
library(fGarch)


shinyServer(
  function(input, output){
    output$myPlot <- renderPlot({
      me <- input$location
      sdd <- input$sdd
      skw <- input$skw-1
      plot(z, -dsnorm(z, mean = me, sd = sdd, xi= skw, log = FALSE), type = "l", lwd = 3, col = "red", ylab = "Density", xlab = "x values", main = "Skew Normal Density")
    }
      
    )
  }
)

