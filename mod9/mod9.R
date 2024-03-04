
library(ggplot2)
library(lattice)

df = read.csv("KosteckiDillon.csv")

# visual 1
piedata = c(sum(df$sex == "female"), sum(df$sex == "male"))
pie(piedata, main="Gender", col=rainbow(length(piedata)),
    labels=c("Female","Male"))

# visual 2
ggplot(df, aes(x = headache, color = medication)) +
    geom_bar(position = "dodge")

# visual 3
xyplot(dos ~ airq, df)

