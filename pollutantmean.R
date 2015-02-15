
pollutantmean <- function(directory, pollutant, id = 1:332) {

  sum <- 0
  count <- 0
  
  for (i in id ) {
    data <- read.csv(paste(directory, "/", formatC(i, width=3, flag="0"), ".csv", sep = ""))
    sum <- sum + sum(data[pollutant], na.rm = TRUE)
    count <- count + sum(!is.na(data[pollutant])) 
  }
  
  mean = sum / count
  
  mean
  
}