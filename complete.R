complete <- function(directory, ID = 1:332){
  files_list <- dir(directory)
  dat <- data.frame()
  id <- c(ID)
  ##
  files_list2 <- dir(directory, full.names=TRUE)
  dat <- data.frame()
  for(i in ID){
  filei <- read.csv(files_list2[i])
  ccase <- complete.cases(filei)
  nobs <- sum(ccase)
  dat <- rbind(dat,nobs)
}
  tab <- cbind(id,dat)
  coltitles <- names(tab)
  colnames(tab)[colnames(tab) == coltitles[2]] <- "nobs"
tab
}


