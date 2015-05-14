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
   p("This application aims to do simulations on exponential distribution and Central Limit Theorem. Users can set the values of lambda,population size and repetition times of exponential simulation. Then the averages of each population are calculated and demonstrated in a histogram, users can choose to add the mean line or not in order to make comparisons between theoretical mean and simulation mean.Furthermore, CLT can also be testified in this histogram.")
   )
  
)
)


