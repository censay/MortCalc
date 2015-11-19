payments  <- function(loan, apr, years) {
    months <- years * 12
    rate <- 1 + apr / 100 / 12
    loan * rate^months * (rate - 1) / (rate^months - 1)
}

shinyServer(
    function(input, output) {
        output$inputLoan <- renderPrint({input$loan})
        output$inputAPR <- renderPrint({input$apr})
        output$inputMonths <- renderPrint({input$years})
        output$prediction <- renderPrint({payments(input$loan, input$apr, input$years)})
    }
)