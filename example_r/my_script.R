library(poorman)

write.csv(poorman::filter(mtcars, am == 1), "output.csv", row.names = FALSE)
