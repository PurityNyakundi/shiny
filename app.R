library(shiny)
ui<-fluidPage(
  wellPanel(sliderInput(inputId = "num",
              label = "My label",
              value=10,min = 1,max = 100),
  plotOutput("hist")
))
server<-function(input,output){
  output$hist<-renderPlot({
    title = "histogram"
    hist(rnorm(input$num),main = title,xlab = "histogram")
  })
}
shinyApp(ui = ui,server = server)