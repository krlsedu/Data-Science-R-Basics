# Title     : TODO
# Objective : TODO
# Created by: krlse
# Created on: 28/04/2021

library(dslabs)
data(murders)

murder_rate <- murders$total / murders$population * 100000
murder_rate

low <- murder_rate < 1

which(low)

murders$state[low]

north_east <- murders$region == "Northeast"

murders$state[low & north_east]

average <- mean(murder_rate)

b_avg <- murder_rate < average

sum(b_avg)

murders$state[match(c("AK", "MI", "IA"), murders$abb)]

abr <- c("MA", "ME", "MI", "MO", "MU")

abr_in <- murders$abb %in% abr

murders$state[!abr_in]


