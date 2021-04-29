# Title     : TODO
# Objective : TODO
# Created by: krlse
# Created on: 28/04/2021

# Store the murder rate per 100,000 for each state, in murder_rate
murder_rate <- murders$total / murders$population * 100000

# Store the murder_rate < 1 in low
low <- murder_rate < 1

# Get the indices of entries that are below 1
which(low)


# Store the murder rate per 100,000 for each state, in murder_rate
murder_rate <- murders$total / murders$population * 100000

# Store the murder_rate < 1 in low
low <- murder_rate < 1

# Names of states with murder rates lower than 1
murders$state[low]


# Store the murder rate per 100,000 for each state, in `murder_rate`
murder_rate <- murders$total / murders$population * 100000

# Store the `murder_rate < 1` in `low`
low <- murder_rate < 1

# Create a vector ind for states in the Northeast and with murder rates lower than 1.
ind <- murders$region == "Northeast" & low

# Names of states in `ind`
murders$state[ind]


# Store the murder rate per 100,000 for each state, in murder_rate
murder_rate <- murders$total / murders$population * 100000


# Compute the average murder rate using `mean` and store it in object named `avg`
avg <- mean(murder_rate)

# How many states have murder rates below avg ? Check using sum
sum(murder_rate < avg)


# Store the 3 abbreviations in a vector called `abbs` (remember that they are character vectors and need quotes)
abbs <- c("AK", "MI", "IA")

# Match the abbs to the murders$abb and store in ind
ind <- match(abbs, murders$abb)

# Print state names from ind
murders$state[ind]


# Store the 5 abbreviations in `abbs`. (remember that they are character vectors)
abbs <- c("MA", "ME", "MI", "MO", "MU")

# Use the %in% command to check if the entries of abbs are abbreviations in the the murders data frame
abbs %in% murders$abb


# Store the 5 abbreviations in abbs. (remember that they are character vectors)
abbs <- c("MA", "ME", "MI", "MO", "MU")

# Use the `which` command and `!` operator to find out which index abbreviations are not actually part of the dataset and store in `ind`
ind <- abbs %in% murders$abb
ind <- which(!ind)

# Names of abbreviations in `ind`
abbs[ind]


# Loading data
library(dslabs)
data(murders)

# Loading dplyr
library(dplyr)

# Redefine murders so that it includes a column named rate with the per 100,000 murder rates
murders <- mutate(murders, rate = total / population * 100000)


# Note that if you want ranks from highest to lowest you can take the negative and then compute the ranks
x <- c(88, 100, 83, 92, 94)
rank(-x)

# Defining rate
rate <- murders$total / murders$population * 100000

# Redefine murders to include a column named rank
# with the ranks of rate from highest to lowest
murders <- mutate(murders, rank = rank(-rate))


# Load dplyr
library(dplyr)

# Use select to only show state names and abbreviations from murders
select(murders, state, abb)


# Add the necessary columns
murders <- mutate(murders, rate = total / population * 100000, rank = rank(-rate))

# Filter to show the top 5 states with the highest murder rates
filter(murders, rank <= 5)


# Use filter to create a new data frame no_south
no_south <- filter(murders, region != "South")
# Use nrow() to calculate the number of rows
nrow(no_south)


# Create a new data frame called murders_nw with only the states from the northeast and the west
murders_nw <- filter(murders, region == "Northeast" | region == "West")

# Number of states (rows) in this category
nrow(murders_nw)


# add the rate column
murders <- mutate(murders, rate = total / population * 100000, rank = rank(-rate))

# Create a table, call it my_states, that satisfies both the conditions
my_states <- filter(murders, (region == "Northeast" | region == "West") & rate < 1)
# Use select to show only the state name, the murder rate and the rank
select(my_states, state, rate, rank)


# Load library
library(dplyr)

## Define the rate column
murders <- mutate(murders, rate = total / population * 100000, rank = rank(-rate))

# show the result and only include the state, rate, and rank columns, all in one line, in that order
mutate(murders, rate = total / population * 100000, rank = rank(-rate)) %>%
  filter((region == "Northeast" | region == "West") & rate < 1) %>%
  select(state, rate, rank)


# Loading the libraries
library(dplyr)
data(murders)

# Create new data frame called my_states (with specifications in the instructions)
my_states <- murders %>%
  mutate(rate = total / population * 100000, rank = rank(-rate)) %>%
  filter((region == "Northeast" | region == "West") & rate < 1) %>%
  select(state, rate, rank)