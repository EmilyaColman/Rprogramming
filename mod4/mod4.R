
library(ggplot2)
library(gridExtra)

Frequency <- c(0.6,0.3,0.4,0.4,0.2,0.6,0.3,0.4,0.9,0.2)
BP <- c(103,87,32,42,59,109,78,205,135,176)
First <- as.factor(c(1,1,1,1,0,0,0,0,NA,1))
Second <- as.factor(c(0,0,1,1,0,0,1,1,1,1))
FinalDecision <- as.factor(c(0,1,0,1,0,1,0,1,1,1))

plotdf = data.frame(Frequency, BP, First, Second, FinalDecision)

plot1 = ggplot(plotdf, aes(x = FinalDecision, y = BP)) +
    geom_boxplot()

plot2 = ggplot(plotdf, aes(x = Frequency)) +
    geom_histogram()

grid.arrange(plot1, plot2, ncol=2)


