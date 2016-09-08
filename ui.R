
shinyUI(pageWithSidebar(
  headerPanel("Skew Normal Distribution Play!"),
  sidebarPanel(
    sliderInput('location', 'Location', value = 0, min = -3, max = 3, step = 0.25),
    sliderInput("sdd", "Scale", value = 1, min = 0.5, max = 5, step = 0.25),
    sliderInput("skw", "Shape", value = 0, min = -0.95, max = .95, step = 0.05),
    h5('The shape parameter has been rescaled to reflect a positive/negative skew. Note that this is not the value of the skweness.')
  ),
  mainPanel(
    plotOutput('myPlot')
  )
))

