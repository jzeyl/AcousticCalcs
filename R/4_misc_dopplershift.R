#'dopplershift
#'
#'Calculates the doppler shift. Input velocity, frequency. The output gives the new frequency and
#'the frequency shift
#'S2 (time shifted sound), Tadd (time added), Time (time)
#' @param v1 speed of first one
#' @param v2 speed of second one
#' @param direction specify the direction as towards or away from each other
#' @param f frequency
#' @examples dopplershift(v1 = 10, v2 = 0, c = 343, freq = 300, direction = "towards")
#'$Frequency
#'[1] 308.7464
#'
#'$`Percent frequency shift`
#'[1] 2.915452
#'

#Doppler
#positive v = movint towards
# negative v = moving away from
#v = speed of receiver relatieve to medium
#Fo = origina frequency

#velocity in m/s
dopplershift<-function(v1 = 10, v2 = 0, c = 340,freq = 300, direction = "towards"){
  if(direction == "towards"){
    newHz<-((c+v1)/c)*freq
    Hzshift<-((newHz-freq)/freq)*100
    output<- list("Frequency" = newHz, "Percent frequency shift" = Hzshift)
    return(output)
  }
  else if(direction == "away"){
    newHz<-((c-v1)/c)*freq
    Hzshift<-((newHz-freq)/freq)*100
    output<- list("Frequency" = newHz, "Percent frequency shift" = Hzshift)
    return(output)
  }
}

#dopplershift(direction = "away")
#  ((c+v))

#11mps = 40 km/h
#Foriginal <- 1
#DopplerFtowards <- ((340+11)/340)*Foriginal
#DopplerFaway <- (340+-11/340)*Foriginal

#PercentHzshift<-((DopplerFtowards-Foriginal)/Foriginal)*100
#PercentHzshift
#equals a 3% shift

