#'Phase shift
#'
#'Calculates the sine wave and time shifted time wave. Output is a list: S1 (first sound),
#'S2 (time shifted sound), Tadd (time added), Time (time)
#' @param v1 speed of first one
#' @param v2 speed of second one
#' @param freq frequency
#' @param f frequency
#' @examples
#' timeshiftpressure(Amplitude = 1, freq = 2, distance = 340, c = 340)
#' 1.002374

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

