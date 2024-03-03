# install.packages("pryr")
require(pryr)
require(ISLR)
require(boot)
# install.packages("plyr")
library(data.table)
library(plyr)

Student = read.table(file.choose(), header = TRUE, sep = ",") 

StudentAverage = ddply(Student,"Sex",transform,Grade.Average=mean(Grade))

i_students <- subset(StudentAverage, grepl("i", StudentAverage$Name, ignore.case=T))

write.table(i_students, "Students_Gendered_Mean", sep = ",")