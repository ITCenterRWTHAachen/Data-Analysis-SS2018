# Create the function.
library(lessR)

#Frequency <- runif(10000, min=1, max = 10)
#Frequency <- rnorm(10000)
Frequency <- rpois(10000,9)
mean <- mean(Frequency)
median <- median(Frequency)
h <- hist(Frequency, breaks=1024)
mode <- h$mids[h$counts == max(h$counts)]
colors = c("#00b1ac")

Histogram(Frequency, color.fill = colors, color.bg="black", color.stroke="white", main="", sub="", ylab="", xlab="Value", color.axis = "black")
boxplot(Frequency, col=colors, width=c(2.0,2.0))
abline(v = mean, col = "red", lwd = 2)
abline(v = median, col = "blue", lwd = 2)
abline(v = mode, col = "orange", lwd = 2)

Data <- c(rep(1, 4), rep(2, 4), rep(3, 4), rep(4, 4), rep(5, 4), rep(6, 4), rep(7, 4), rep(8,4), rep(9,4))
sd(Data)
Data <- c(rep(1, 10), rep(2, 6), rep(3, 4), rep(4, 2), rep(5, 1), rep(6, 2), rep(7, 4), rep(8,6), rep(9,10))
sd(Data)
Data <- c(rep(1, 1), rep(2, 2), rep(3, 4), rep(4, 6), rep(5, 10), rep(6, 6), rep(7, 4), rep(8,2), rep(9,1))
sd(Data)
Histogram(Data, color.fill = colors, color.bg="black", color.stroke="white", main="", sub="", ylab="", xlab="Value", color.axis = "white", bin.start=0, pdf.file="output.pdf")
