# Title     : TODO
# Objective : TODO
# Created by: krlse
# Created on: 25/04/2021

library(dslabs)
data("murders")

str(murders)

library(dslabs)
data("murders")

names(murders)

a <- murders$abb
class(a)


# We extract the population like this:
p <- murders$population

# This is how we do the same with the square brackets:
o <- murders[["population"]]

# We can confirm these two are the same
identical(o, p)
b <- murders[["abb"]]
identical(a, b)

length(levels(murders$region))


# The "c" in `c()` is short for "concatenate," which is the action of connecting items into a chain
# The function `c()` connects all of the strings within it into a single vector, which we can assign to `x`
x <- c("a", "a", "b", "b", "b", "c")
# Here is an example of what the table function does
table(x)

table(murders$region)
