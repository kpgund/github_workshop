##### analyze the data ######

## load libraries
library(lme4)
library(stats)

## bring in the data
moth.clean <- read.csv(
  "data/processed/moth-clean.csv"
)

## run analysis
form <- detected ~ tree.height + prop.mush + temp.C + forest.type

fit <- glm(
  form, 
  data = moth.clean, 
  family = "binomial"
)
summary(fit)

## save the model outputs as RData
save(
  fit, 
  file = "outputs/moth-det-results.RData"
)
