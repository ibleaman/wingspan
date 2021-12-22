
library(shiny)
library(shinycssloaders)
library(plotly)

shinyUI(fluidPage(theme = "wingspan_with_lauren.css",
                  title="Wingspan (by Lauren)",
    h1("Wingspan"),
    h2("(by Lauren)"),

    tabsetPanel(type="pills",
        tabPanel("Overall", 
                 h3("Points over Time"),
                 withSpinner(plotlyOutput("all_points_time"), type=4, color="#b5b5b5", size=0.5),
                 h3("Ranking over Time"),
                 withSpinner(plotlyOutput("rank_time"), type=4, color="#b5b5b5", size=0.5),
                 h3("Point Percentage per Game (for Winner)"),
                 withSpinner(plotlyOutput("point_pct_time"), type=4, color="#b5b5b5", size=0.5),
                 h3("Distribution of Points"),
                 withSpinner(plotlyOutput("box_whisker"), type=4, color="#b5b5b5", size=0.5),
                 h3("Average Point Percentage per Player"),
                 withSpinner(plotlyOutput("point_pct_freq_players"), type=4, color="#b5b5b5", size=0.5)),
        
        tabPanel("By Player", 
                 selectInput("player_comp_select",
                             "Choose a player:",
                             c("Isaac", "Reyna")),
                 h3("Point Categories over Time"),
                 withSpinner(plotlyOutput("player_comp"), type=4, color="#b5b5b5", size=0.5))
    ),
    hr(),
    p("Fonts:",
    a("Cardenio Modern Bold", href="https://www.dafont.com/cardenio-modern.font"),
    ",",
    a("Bebas Neue Regular", href="https://fonts.google.com/specimen/Bebas+Neue?preview.text_type=custom")
    ),
    p("Color Palette:",
      a("Paul Tol's Accessible Color Schemes", href="https://personal.sron.nl/~pault/")),
    p("Source:",
      a("Google Sheets", 
        href="https://docs.google.com/spreadsheets/d/1-jrjGdTW_CoXiZ3QtcUCUdGj0ur-9lGbUpgIHg1zJwE/edit?usp=sharing")),
    p("Forked from:",
      a("https://github.com/laurenmarietta/wingspan-with-lauren", 
        href="https://github.com/laurenmarietta/wingspan-with-lauren"))
))
