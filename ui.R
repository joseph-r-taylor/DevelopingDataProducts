library(shiny)
data(mtcars)

shinyUI(pageWithSidebar(
        headerPanel('Dynamic Clustering (K-means Algorithm) of mtcars Dataset'),
        sidebarPanel(
                h4("Intialize by choosing the variables you would 
                        like to see in the plot (X & Y)"),
                selectInput('xcol', 'Choose X Variable', names(mtcars)),
                selectInput('ycol', 'Choose Y Variable', names(mtcars),
                            selected=names(mtcars)[[2]]),
                h4("Now input the desired number of clusters (default is
                   3)"),
                numericInput('clusters', 'Number of Clusters', 3,
                             min = 1, max = 9)
        ),
        mainPanel(
                plotOutput('plot1')
        )
))
