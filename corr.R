
corr <- function(directory, threshold = 0) {
  
  files <- dir(paste(directory, "/", sep=""), pattern =".csv")
  
  rez <- c()
  
  for(i in 1:length(files)){
    
    data <- read.csv(paste(directory, "/", files[i], sep=""))
    
    if (sum(complete.cases(data)) > threshold) {
      rez <- c(rez, cor(data[["sulfate"]], data[["nitrate"]], use="complete.obs"))
    }
  }
  
  rez
  
}