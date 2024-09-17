## load libraries
library(sjPlot)

## load in the data
load("outputs/moth-det-results.RData")
summary(fit)

## extract coefficients
tab_model(
  fit, ## the model output
  transform = NULL,
  show.se = TRUE,
  show.zeroinf = F,
  show.r2 = F,
  show.icc = F,
  show.re.var = F,
  show.ngroups = FALSE,
  show.obs = F,
  pred.labels = c( ## change to the names of your covariates that make sense
    "(Intercept)", 
    "Tree Height", "Proportion of Mushrooms",
    "Temperature (C)", "Mixed Forest", "Oak Forest", "Pine Forest"
  ),
  dv.labels = " ",
  string.est = "Estimate",
  string.se = "SE",
  string.p = "p-value",
  string.ci = "95% CI"
  # file = "datavis/moth-results-table.html" ## change this to where you want to save it to!!
)
