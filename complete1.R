
complete <- function(directory, id = 1:332) {
  files <- list.files(directory, full.names = TRUE)
  df <- data.frame()
  
  for (i in id) {
    csv <- read.csv(files[i])
    nobs <- sum(complete.cases(csv))
    tmp <- data.frame(i, nobs)
    df <- rbind(df, tmp)
  }
  
  return(df)
}

complete("specdata", 30:25)
complete("specdata", 3)


