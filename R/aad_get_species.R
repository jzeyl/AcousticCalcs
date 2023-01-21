get_species<-function(name){
  #load audiogram brower from url
  browse_audiograms()  
  
  #find id numbers for that species
  idlist<-browse$id[browse$species_name==name]
  
  #get audiogram for that as a list 
  audiogramlst<-list()
  for (i in idlist) {
    # ... make some data
    url<- paste0("https://www.animalaudiograms.org/api/v1/audiogram?id=",i)
    res <- GET(url)
    print(url)
    dat<- fromJSON(rawToChar(res$content)) 
    dat$i <- i  # maybe you want to keep track of which iteration produced it?
    dat$species<-as.character(name)
    audiogramlst[[i]] <- dat # add it to your list
  }
  #convert list of single audiograms to a dataframe
  
  big_data <- do.call(rbind, audiogramlst)
  assign("audiograms",big_data,envir = .GlobalEnv)
}

get_species("Phoca largha")