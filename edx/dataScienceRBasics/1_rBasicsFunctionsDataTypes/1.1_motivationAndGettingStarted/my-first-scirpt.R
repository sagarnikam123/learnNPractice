library(tidyverse)
library(dslabs)

data("murders")

murders %>%
  ggplot(aes(population, total, label = abb, color = region)) +
  geom_label()