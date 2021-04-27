# Title     : TODO
# Objective : TODO
# Created by: krlse
# Created on: 26/04/2021

temp <- c(35, 88, 42, 84, 81, 30)
city <- c("Beijing", "Lagos", "Paris", "Rio de Janeiro", "San Juan", "Toronto")
city_temps <- data.frame(name = city, temperature = temp)


# Assign city names to `city`
city <- c("Beijing", "Lagos", "Paris", "Rio de Janeiro", "San Juan", "Toronto")

# Store temperature values in `temp`
temp <- c(35, 88, 42, 84, 81, 30)

# Convert temperature into Celsius and overwrite the original values of 'temp' with these Celsius values
temp <- 5 / 9 * (temp - 32)

# Create a data frame `city_temps`
city_temps <- data.frame(name = city, temperature = temp)


# Define an object `x` with the numbers 1 through 100
x <- seq(1, 100)
# Compute the su
sum(1 / x^2)


# Load the data
library(dslabs)
data(murders)

# Store the per 100,000 murder rate for each state in murder_rate
murder_rate <- murders$total / murders$population * 100000

# Calculate the average murder rate in the US
mean(murder_rate)


x <- c(2, 43, 27, 96, 18)

sort(x)
order(x)
rank(x)

min(x)
which.min(x)
max(x)
which.max(x)


name <- c("Mandi", "Amy", "Nicole", "Olivia")
distance <- c(0.8, 3.1, 2.8, 4.0)
time <- c(10, 30, 40, 50)

time_run <- data.frame(name = name, distance = distance, time = time)
speed <- time_run$time/60
speed <- time_run$distance/speed
speed