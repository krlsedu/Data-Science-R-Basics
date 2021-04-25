# Title     : TODO
# Objective : TODO
# Created by: krlse
# Created on: 25/04/2021


a <- 2
b <- -1
c <- -4
baskara_1 <- (-b + sqrt(b^2 - 4 * a * c)) / (2 * a)
baskara_2 <- (-b - sqrt(b^2 - 4 * a * c)) / (2 * a)

baskara_1
baskara_2

log(1024, base = 4)


library(dslabs)
data(movielens)

length(movielens)

str(movielens)

class(movielens$title)
class(movielens$genres)

nlevels(movielens$genres)