#'
#' Calculates transmission in 6 dB per distance doubled. Defaults to dB units, but Pa can be used
#'
#' @param distance distance between source and receiver
#' @param initlevel  sound level at source
#' @param unit  units of dB or Pa
#' @export
#' @examples
#' pressuredrop(2)
#' 6
#'
#' pressuredrop(2, 100, unit = "Pa")
#'$Transmissionloss
#'[1] 0.5
#'
#'$newlevel
#'[1] 50

transmissionloss<- function(distance = 2, initlevel = 100, unit = "dB"){
  if (unit == "dB"){
  TL<- 20*log(distance, base = 10)
  newlevel<-initlevel-TL
  my_list <- list(ToL = TL,"newlevel" = newlevel)
  } else if (unit == "Pa"){
  TL<- 1/distance
  newlevel<-initlevel*TL
  my_list <- list("Transmissionloss" = TL, "newlevel" = newlevel)
  } else{
  return("Please specify unit")
  }
  return(my_list)
 }

