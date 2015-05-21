cfunc <- function(x,lambda,n) sqrt(n) * (mean(x) - 1/lambda) / 1/lambda

shinyServer(
function(input, output) {
output$figure<-renderPlot({
lambda<-input$lambda ## set lambda value
n<-input$popSize ##set population size
scale<-input$repTimes ##set repetition times
set.seed(111)
expArray<-matrix(rexp(n*scale,lambda),scale) ##create a matrix
meanArray<-apply(expArray,1,cfunc,lambda,n) ## calculate the mean value of each group
hist(meanArray,breaks=20,freq=FALSE,xlab="Mean of The Samples",main="Histogram Of Averages of Exponential Distribution")
if(input$meanLine)
abline(v=0,col="red",lwd=3)
}


)
}
)