
species_available<-function(common = FALSE){
  url<- "https://www.animalaudiograms.org/api/v1/browse"
  res <- GET("https://www.animalaudiograms.org/api/v1/browse")
  dat <- fromJSON(rawToChar(res$content))
  if(common == TRUE){
    print(unique(dat$vernacular_name_english))
  }
  else{print(unique(dat$species_name))
  }
}
species_available(common = TRUE)#common names
species_available(common = FALSE)#scientific names
