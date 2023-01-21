library(jsonlite)
library(httr)

browse_audiograms<-function(){
  url<- "https://www.animalaudiograms.org/api/v1/browse"
  res <- GET("https://www.animalaudiograms.org/api/v1/browse")
  dat <- fromJSON(rawToChar(res$content))
  assign("browse",dat, envir = .GlobalEnv)
}
browse_audiograms()

  
