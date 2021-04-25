# Title     : TODO
# Objective : TODO
# Created by: krlsedu
# Created on: 25/04/2021

library(dslabs)
library(tidyverse)
data(murders)

murders %>%
    ggplot(aes(population, total, label=abb, color=region)) +
    geom_label()