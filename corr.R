
corr <- function(directory, threshold = 0) {
  files<- list.files(directory, full.names = TRUE)
  df <- vector(mode = "numeric", length = 0)
  
  for (i in 1:length(files)) {
    csv <- read.csv(files[i])
    sum_na <- sum((!is.na(csv$sulfate)) & (!is.na(csv$nitrate)))
    if (sum_na > threshold) {
      temp <- csv[which(!is.na(csv$sulfate)), ]
      scsv<- temp[which(!is.na(temp$nitrate)), ]
      df <- c(df, cor(scsv$sulfate, scsv$nitrate))
    }
  }
  
  return(df)
}


