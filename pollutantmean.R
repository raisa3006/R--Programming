#pollutantmean function
pollutantmean <- function(directory= "specdata",polutant,id=1:332) {
  filelist <- list.files() #taking all the csv files in one file
  
  f <- list() # making an empty list to store all the data
  
  for (i in id){
    f[[i]] <- read.csv(filelist[i],header = TRUE) #reading in all the csv data
    
     }
  onefile <- do.call(rbind,f) #binding all the data row wise as columns are same in all csv files
  mean <-mean(onefile[,polutant],na.rm=TRUE) #taking mean excluding NA values
  return(mean)
}



