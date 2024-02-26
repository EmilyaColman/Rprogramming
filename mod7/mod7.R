
library(datasets)
library(methods)

data("ChickWeight")
head(ChickWeight)
list(ChickWeight)

isS4(ChickWeight)
typeof(ChickWeight)

#S3
personTest = list(name = "Ellen", age = 70)
class(personTest) = "PersonTest"
x = personTest
personTest

#S4
setClass("PersonTest2",
         slots = c(name = "character", age = "numeric", gender = "character"))

james <- new("PersonTest2", name = "James", age = 30)
james
isS4(james)
