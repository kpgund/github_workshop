##### clean the data ######


## bring in data
moth <- read.csv(
  "data/raw/raw-data.csv"
)

## make forest type a factor
moth$forest.type <- as.factor(forest.type)
unique(moth$forest.type)

## save the data
write.csv(
  moth, 
  "data/processed/moth-clean.csv"
)
