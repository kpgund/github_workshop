## create data from example repo
set.seed(12) ## make sure this creates again
N <- sample(513:2346, 1)
b0 <- 0.75
b1 <- -0.22
b2 <- 1.5
b3 <- -2.13
x1 <- rnorm(N)
x2 <- rnorm(N)
x3 <- rnorm(N)

prob <- exp(b0 + b1*x1 + b2*x2 + b3*x3) / (1 + exp(b0 + b1*x1 + b2*x2 + b3*x3))
det <- rbinom(N, 1, prob = prob)

df <- data.frame(
  siteID = seq(1:N),
  detected = det,
  tree.height = x1,
  prop.mush = x2,
  temp.C = x3,
  forest.type = sample(c("oak","pine", "mixed"), N, replace = T)
)

## add some mess
pine.idx <- sample(which(df$forest.type == "pine"), 13, replace = FALSE)
oak.idx <- sample(which(df$forest.type == "oak"), 31, replace = FALSE)
mixed.idx <- sample(which(df$forest.type == "mixed"), 6, replace = FALSE)
df$forest.type[pine.idx] <- "Pine"
df$forest.type[oak.idx] <- "oka"
df$forest.type[mixed.idx] <- "mixed?"

write.csv(
  df, 
  "ex-repo/data/raw/raw-data.csv",
  row.names = FALSE
)
