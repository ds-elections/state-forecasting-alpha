#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(leaflet)

bins <- c(0, .5, 1)
pal <- colorBin(palette = c("red", "white", "blue"),
                domain = SEN14$perc_Dem,
                bins = bins)

m <- leaflet(SENshape) %>%
  addPolygons(color = "#444444", weight = 1, smoothFactor = 0.5,
              opacity = 1.0, fillOpacity = 0.5,
              fillColor = ~pal(SEN14$perc_Dem),
              highlightOptions = highlightOptions(color = "white", weight = 2,
                                                  bringToFront = TRUE))
m

# Define UI for application that draws a map
ui <- fluidPage(
  
  # Application title
  titlePanel("California Legislative Elections"),
  
  # Sidebar with a slider input for year of election 
  sidebarLayout(
    sidebarPanel(
      sliderInput(inputId = "year",
                  label = "Election year",
                  min = 1966,
                  max = 2016)
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      leafletOutput("CAmap")
    )
  )
)

# Define server logic required to draw a histogram
server <- function(input, output) {
  
  output$CAmap <- renderLeaflet({
    # generate bins based on input$bins from ui.R
    x    <- faithful[, 2] 
    bins <- seq(min(x), max(x), length.out = input$bins + 1)
    
    # draw the histogram with the specified number of bins
    hist(x, breaks = bins, col = 'darkgray', border = 'white')
  })
}

# Run the application 
shinyApp(ui = ui, server = server)

