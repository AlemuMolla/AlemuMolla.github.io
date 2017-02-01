
#####################  Practice 1 #################

#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

# library(shiny)
# 
# # Define UI for application that draws a histogram
# ui <- shinyUI(fluidPage(
#    
#    # Application title
#    titlePanel("Data science FTW!"),
#    
#    # Sidebar with a slider input for number of bins 
#    sidebarLayout(
#       sidebarPanel(
#          h3(" Sidebar Text"),
#          h1("Alemu"),
#          h2("Molla"),
#          em("Emphasized Text")
#       ),
#       
#       # Show a plot of the generated distribution
#       mainPanel(
#          h3("Main Panel Text"),
#          code("some Code!")
#       )
#    )
# ))

# Define server logic required to draw a histogram
server <- shinyServer(function(input, output) {
   
 
})

# Run the application 
shinyApp(ui = ui, server = server)



#####################  Practice 2 #################
#####################

# ui<- shinyUI(fluidPage(
#   titlePanel("Slider App"),
#   sidebarLayout(
#     sidebarPanel(
#       h1("Move the Slider!"),
#       sliderInput("slider2", "Slide Me!", 0, 100, 0)
#   ),
#   mainPanel(
#     h3("slider Value:"),
#     textOutput("text1")
#      )
#     )
#   ))


 ###########  
# server <- shinyServer(function(input, output) {
#     output$text1 = renderText(input$slider2)
# })
# 
# shinyApp(ui = ui, server = server)


#####################  Practice 3 #################



library(shiny)
shinyUI(fluidPage(
  titlePanel("Plot Random Numbers"),
  sidebarLayout(
    sidebarPanel(
      numericInput("numeric", "How Many Random Numbers Should be Plotted?", 
                   value = 1000, min = 1, max = 1000, step = 1),
      sliderInput("sliderX", "Pick Minimum and Maximum X Values",
                  -100, 100, value = c(-50, 50)),
      sliderInput("sliderY", "Pick Minimum and Maximum Y Values",
                  -100, 100, value = c(-50, 50)),
      checkboxInput("show_xlab", "Show/Hide X Axis Label", value = TRUE),
      checkboxInput("show_ylab", "Show/Hide Y Axis Label", value = TRUE),
      checkboxInput("show_title", "Show/Hide Title")
    ),
    mainPanel(
      h3("Graph of Random Points"),
      plotOutput("plot1")
    )
  )
))


# library(shiny)
# shinyServer(function(input, output) {
#   output$plot1 <- renderPlot({
#     set.seed(2016-05-25)
#     number_of_points <- input$numeric
#     minX <- input$sliderX[1]
#     maxX <- input$sliderX[2]
#     minY <- input$sliderY[1]
#     maxY <- input$sliderY[2]
#     dataX <- runif(number_of_points, minX, maxX)
#     dataY <- runif(number_of_points, minY, maxY)
#     xlab <- ifelse(input$show_xlab, "X Axis", "")
#     ylab <- ifelse(input$show_ylab, "Y Axis", "")
#     main <- ifelse(input$show_title, "Title", "")
#     plot(dataX, dataY, xlab = xlab, ylab = ylab, main = main,
#          xlim = c(-100, 100), ylim = c(-100, 100))
#   })
# })

