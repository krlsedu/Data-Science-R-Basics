# Title     : TODO
# Objective : TODO
# Created by: krlse
# Created on: 26/04/2021

city <- c("Beijing", "Lagos", "Paris", "Rio de Janeiro", "San Juan", "Toronto")
temp <- c(35, 88, 42, 84, 81, 30)

temp
names(temp) <- city

temp[1:3]

temp[c("Paris", "San Juan")]

seq(12, 73)

12:73

x <- seq(6, 55, 4 / 7)

length(seq(6, 55, 4 / 7))

y <- seq(1, 10, 0.5)
class(y)

z <- seq(1, 10)
class(z)

class(a <- 1L)

x <- c("1", "3", "5")

x <- as.integer(x)

class(x)


cost <- c(50, 75, 90, 100, 150)
food <- c("pizza", "burgers", "salads", "cheese", "pasta")
names(cost) <- food

# You already wrote this code
temp <- c(35, 88, 42, 84, 81, 30)
city <- c("Beijing", "Lagos", "Paris", "Rio de Janeiro", "San Juan", "Toronto")

# Associate the temperature values with its corresponding city
names(temp) <- city
temp[1:3]

x <- 12:73
length(x)

seq(1, 100, 2)

length(seq(6, 55, 4 / 7))

class(a <- seq(1, 10, length.out = 100))

# Store the sequence in the object a
a <- seq(1, 10)

# Determine the class of a
class(a)


# Define the vector x
x <- c(1, 3, 5,"a")

# Note that the x is character vector
x

# Redefine `x` to typecast it to get an integer vector using `as.numeric`.
# You will get a warning but that is okay
x <- as.numeric(x)
