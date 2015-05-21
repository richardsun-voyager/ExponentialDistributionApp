shinyUI(navbarPage("Exponential Distribution Simulation Navbar!",
  tabPanel("Plot",
    sidebarLayout(      
    sidebarPanel(
    h2('Exponential Distribution Simulation Settings'),
    sliderInput('lambda', 'Numeric input, labeled lambda', 0.05, min = 0.05, max = 1, step = 0.05),
    numericInput('popSize',  "Population Size",10,min=10,max=100,step=10),
    numericInput('repTimes',  "Repetition Times",100,min=100,max=2000,step=100),
    checkboxInput("meanLine", "Show the Mean Line", FALSE)
    ),
    mainPanel(
       h2('Distribution of Average'),
       plotOutput('figure')
    )
  )
),  
   tabPanel("Supporting Document",  
   h3("This application aims to do simulations on exponential distribution and Central Limit Theorem."),
p("1.Users can set the values of lambda,population size(step by 10) and repetition times of exponential simulation(step by 100). The generalized averages of each population are calculated and demonstrated in a histogram."),
p("2.Users can choose to add the mean line or not in order to make comparisons between theoretical mean and simulation result.") )
  
)
)


