library(ggplot2)
shinyServer(
function(input, output) {
output$figure<-renderPlot({
lambda<-input$lambda
n<-input$popSize
scale<-input$repTimes
set.seed(111)
expArray<-matrix(rexp(n*scale,lambda),scale)
meanArray<-apply(expArray,1,mean)
hist(meanArray,breaks=20,freq=FALSE,xlab="Mean of The Samples",main="Histogram Of Averages of Exponential Distribution")
if(input$meanLine)
abline(v=1/lambda,col="red",lwd=3)
}


)
}
)