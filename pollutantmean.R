pollutantmean <- function(directory, pollutant, ID= 1:332){
  files_list <- dir(directory, full.names = TRUE) 
  dat <- data.frame() 
  for(i in ID){
    dat <- rbind(dat, read.csv(files_list[i]))
  }
  # creates data frame of data from requested monitors
    pol <- dat[,pollutant]
  output <- mean(pol,na.rm=TRUE)
  output
}