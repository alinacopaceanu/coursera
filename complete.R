
complete <- function(directory, id = 1:332) {
  
  rez <- data.frame(id = numeric(0), nobs=numeric(0))
  
  for (i in id ) {
    data <- read.csv(paste(directory, "/", formatC(i, width=3, flag="0"), ".csv", sep = ""))
    rez <- rbind(rez, data.frame(id = i, nobs = sum(complete.cases(data))))
  }
  
  rez
  
}