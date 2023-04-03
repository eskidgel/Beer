#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(DT)

load("~/Downloads/beer_info.rda")
# save as an rda
# load the updated one in 
beer_picker <- function(bocks_n, ipas_n, porters_n, stouts_n) {
  #bocks
  bocks_sample <- sample(1:nrow(all_bocks), bocks_n)
  bname <- all_bocks$`Beer Name`[bocks_sample]
  btype <- all_bocks$`Beer Type`[bocks_sample]
  brating <- all_bocks$`Ratings`[bocks_sample]
  bavg <- all_bocks$`Avg`[bocks_sample]
  
  #ipas
  ipas_sample <- sample(1:nrow(all_ipas), ipas_n)
  iname <- all_ipas$`Beer Name`[ipas_sample]
  itype <- all_ipas$`Beer Type`[ipas_sample]
  irating <- all_ipas$`Ratings`[ipas_sample]
  iavg <- all_ipas$`Avg`[ipas_sample]
  
  #porters
  porters_sample <- sample(1:nrow(all_porters), porters_n)
  pname <- all_porters$`Beer Name`[porters_sample]
  ptype <- all_porters$`Beer Type`[porters_sample]
  prating <- all_porters$`Ratings`[porters_sample]
  pavg <- all_porters$`Avg`[porters_sample]
  
  #stouts
  stouts_sample <- sample(1:nrow(all_stouts), stouts_n)
  sname <- all_stouts$`Beer Name`[stouts_sample]
  stype <- all_stouts$`Beer Type`[stouts_sample]
  srating <- all_stouts$`Ratings`[stouts_sample]
  savg <- all_stouts$`Avg`[stouts_sample]
  
  beer_df <- data.frame(Name = c(bname, iname, pname, sname), Type = c(btype, itype, ptype, stype),
                        Rating = c(brating, irating, prating, srating), Avg = c(bavg, iavg, pavg, savg))
  return(beer_df)
}

# Define UI for slider demo app ----
ui <- fluidPage(
  
  # App title ----
  titlePanel("Beer Types"),
  
  # Sidebar layout with input and output definitions ----
  sidebarLayout(
    
    # Sidebar to demonstrate various slider options ----
    sidebarPanel(
      
      # Input: Simple integer interval ----
      sliderInput("bocks", "Bocks:",
                  min = 0, max = 6,
                  value = 3),
      
      sliderInput("ipas", "IPAs:",
                  min = 0, max = 6,
                  value = 3),
      
      sliderInput("porters", "Porters:",
                  min = 0, max = 6,
                  value = 3),
      
      sliderInput("stouts", "Stouts:",
                  min = 0, max = 6,
                  value = 3)
      
      
    ),
    
    # Main panel for displaying outputs ----
    mainPanel(
      
      # Output: Table summarizing the values entered ----
      dataTableOutput("values")
      
    )
  )
)

# Define server logic for slider examples ----
  server <- function(input, output) {
    
    all_bocks <- all_beers[grepl("bock", all_beers$`Beer Type`), ]
    all_porters <- all_beers[grepl("Porter", all_beers$`Beer Type`), ]
    all_stouts <- all_beers[grepl("Stout", all_beers$`Beer Type`), ]
    all_ipas <- all_beers[grepl("IPA", all_beers$`Beer Type`), ]
    
    # Reactive expression to create data frame of all input values ----
    sliderValues <- reactive({
      
      data.frame(
        Name = c("Bocks", "IPAs", "Porters", "Stouts"),
        Value = as.character(c(input$bocks, input$ipas, input$porters, input$stouts)),
        stringsAsFactors = FALSE)
      
    })
    
    
    
    # Show the values in an HTML table ----
    
    output$values <- DT::renderDataTable({
   
      beer_picker(input$bocks,
                  input$ipas,
                  input$porters,
                  input$stouts)
    })
    
  }

# Create Shiny app ----
shinyApp(ui, server)