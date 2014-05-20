corr <- function(directory, threshold=0){
  files_list <- dir(directory, full.names=TRUE)
  corrs <- numeric()
  xv <- numeric()
  yv <- numeric()
  for(i in 1:332){
    xv <- numeric()
    yv <- numeric()
    filei <- read.csv(files_list[i])
    ccase <- complete.cases(filei)
    nobs <- sum(ccase)
    if(nobs > threshold){ 
       # Tests whether there are enough complete cases from the ith
       # monitor to calculate correlation.
      fileicc <- filei[complete.cases(filei),]
      for(j in 1:nobs){
          xva <- fileicc[j,2]
          yva <- fileicc[j,3]
          xv <- c(xv, xva)
          yv <- c(yv, yva)
         # creates vectors for sulfate and nitrate readings from complete cases.
      }
      corri <- cor(xv,yv) #computes correlation of sulfate and nitrate in file i.
      corrs <- c(corrs, corri) #pastes correlation to list of past correlations.
      }
    }
  corrs
  }