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
library(rgdal)
library(dplyr)
library(maps)
library(mapproj)

SENdata <- Results %>%
  filter(chamber == "SEN") %>%
  rename(NAME = District)

HSdata <- Results %>%
  filter(chamber == "HS") %>%
  rename(NAME = District)

SENmap <- readOGR(dsn = "data-raw/CA_SEN_shapefile",
                  layer = "cb_2016_06_sldu_500k")
HSmap <- readOGR(dsn = "data-raw/CA_HS_shapefile",
                 layer = "cb_2016_06_sldl_500k")

SENleaf <- merge(SENmap, SENdata, by = "NAME", duplicateGeoms = TRUE)
HSleaf <- merge(HSmap, HSdata, by = "NAME", duplicateGeoms = TRUE)


pal <- colorNumeric(c("red", "white", "blue"), 0:1, na.color = "grey")


SENshinymap <- leaflet(SENleaf) %>%
  addPolygons(color = "#444444", weight = 1, smoothFactor = 0.5,
              opacity = 1.0, fillOpacity = 0.5,
              fillColor = ~pal(SENleaf$perc_Dem),
              highlightOptions = highlightOptions(color = "white", weight = 2,
                                                  bringToFront = TRUE))
SENshinymap

HSshinymap <- leaflet(HSleaf) %>%
  addPolygons(color = "#444444", weight = 1, smoothFactor = 0.5,
              opacity = 1.0, fillOpacity = 0.5,
              fillColor = ~pal(HSleaf$perc_Dem),
              highlightOptions = highlightOptions(color = "white", weight = 2,
                                                  bringToFront = TRUE))
HSshinymap

# Define UI for application that draws a map
ui <- fluidPage(
  
  # Application title
  titlePanel("California Legislative Elections"),
  
  
  
  # Sidebar with a slider input for year of election 
  sidebarLayout(
    sidebarPanel(
      sliderInput(inputId = "year",
                  label = "Choose an election",
                  min = 1974,
                  max = 2016),
      checkboxGroupInput(inputId = "chamber",
                         label = "Choose a house",
                         choices = c("Senate" = "SEN",
                                     "Assembly" = "HS"))
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      leafletOutput("CAmap")
    )
  )
)

# Define server logic required to draw a histogram
server <- function(input, output) {
  filteredResults <- reactive({
    Results[Results$year == input$range[2]]
  })
  output$CAmap <- renderLeaflet({
    # generate bins based on input$bins from ui.R
    x    <- faithful[, 2] 
    bins <- seq(min(x), max(x), length.out = input$bins + 1)
    
    # draw the histogram with the specified number of bins
    hist(x, breaks = bins, col = 'darkgray', border = 'white')
  })
}
  observe({
    leafletProxy("CAmap", data = filteredResults()) 
})

# Run the application 
shinyApp(ui = ui, server = server)

