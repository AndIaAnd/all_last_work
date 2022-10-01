library(shiny)
ui <- fluidPage(
  sliderInput("x", "Если x равно", min = 1, max = 50, value = 30),
  sliderInput("y", "и y равно", min = 1, max = 50, value = 5),
  "то (x * y) будет", textOutput("product"),
  "(x * y) + 5 будет", textOutput("product_plus5"),
  "а (x * y) + 10 будет", textOutput("product_plus10")
)
server <- function(input, output, session) {
    product <- reactive({
    product <- input$x * input$y
    product
  })
  output$product <- renderText({
    product()
  })
  output$product_plus5 <- renderText({
    product() + 5
  })
  output$product_plus10 <- renderText({
    product() + 10
  })
}
shinyApp(ui, server)