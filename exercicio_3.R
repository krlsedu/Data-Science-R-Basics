# Title     : TODO
# Objective : TODO
# Created by: krlse
# Created on: 29/04/2021


x <- c(1, 2, -3, 4)
if (all(x > 0)) {
  print("All Positives")
} else {
  print("Not All Positives")
}

x <- c(TRUE)
all(x)

any(x)

any(!x)

all(!x)


# Loading data
library(dslabs)
data(murders)

new_names <- ifelse(nchar(murders$state) > 8, murders$abb, murders$state)

new_names


# Create function called `sum_n`
sum_n <- function(x) {
  y <- x * (x + 1) / 2
  y
}

# Use the function to determine the sum of integers from 1 to 5000
sum_n(5000)

# Create `altman_plot`
altman_plot <- function(x, y) {
  plot(x + y, y - x)
}


# Run this code
x <- 3

my_func <- function(y) {
  x <- 5
  y + 5
}

# Print the value of x
print(x)

# Here is an example of a function that adds numbers from 1 to n
example_func <- function(n) {
  x <- 1:n
  sum(x)
}

# Here is the sum of the first 100 numbers
example_func(100)

# Write a function compute_s_n with argument n that for any given n computes the sum of 1 + 2^2 + ...+ n^2
# Write a function compute_s_n with argument n that for any given n computes the sum of 1 + 2^2 + ...+ n^2
compute_s_n <- function(n) {
  s_n <- vector(length = n)
  for (i in 1:n) {
    s_n[i] <- i^2

  }
  sum(s_n)
}

# Report the value of the sum when n=10

# Report the value of the sum when n=10
compute_s_n(10)


# Define a function and store it in `compute_s_n`
compute_s_n <- function(n){
  x <- 1:n
  sum(x^2)
}

# Create a vector for storing results
s_n <- vector("numeric", 25)

# write a for-loop to store the results in s_n
for (i in seq_along(s_n)){
  s_n[i]<-compute_s_n(i)
}


# Define the function
compute_s_n <- function(n){
  x <- 1:n
  sum(x^2)
}

# Define the vector of n
n <- 1:25

# Define the vector to store data
s_n <- vector("numeric", 25)
for(i in n){
  s_n[i] <- compute_s_n(i)
}

#  Create the plot
plot(n,s_n)





# Define the function
compute_s_n <- function(n){
  x <- 1:n
  sum(x^2)
}

# Define the vector of n
n <- 1:25

# Define the vector to store data
s_n <- vector("numeric", 25)
for(i in n){
  s_n[i] <- compute_s_n(i)
}

# Check that s_n is identical to the formula given in the instructions.
identical(s_n,(n*(n+1)*(2*n+1))/6)