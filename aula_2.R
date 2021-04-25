# Title     : TODO
# Objective : TODO
# Created by: krlse
# Created on: 25/04/2021

library(dslabs)
data("murders")

class(murders)

head(murders)

murders$population

names(murders)

pop <- murders$population

length(pop)

class(murders$state)

z <- 3==2

z

class(z)

# factors are another type of class
class(murders$region)
# obtaining the levels of a factor
levels(murders$region)