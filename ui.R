shinyUI(
    pageWithSidebar(
        # Application title
        headerPanel("Fixed Rate Monthly Mortgage Payment Prediction"),
        
        sidebarPanel(
            h4('Please enter the terms of the possible loan you will be seeking'),
            numericInput('loan', 'Loan size ($)', 500000, min = 100000, max = 1000000, step = 10000),
            numericInput('apr', 'APR (%)', 3.75, min = 0.25, max = 100, step = .25),
            numericInput('years', 'Term (years)', 30, min = 5, max = 50, step = 5)
        ),
        mainPanel(
            h4('Note:  These results are not intended for actual use, consult a qualified loan officer'),
            h3('Results of prediction'),
            h5('You entered a loan of'),
            verbatimTextOutput("inputLoan"),
            h5('You entered an APR of'),
            verbatimTextOutput("inputAPR"),
            h5('You entered a total loan term of'),
            verbatimTextOutput("inputMonths"),
            h5('Your estimated initial monthly mortgage payment is'),
            verbatimTextOutput("prediction")
        )
    )
)