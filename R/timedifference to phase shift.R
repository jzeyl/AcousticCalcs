#'Convert time difference to phase difference
#'
#'Calculates the phase shift corresponding to a given time difference
#' @param tdiff time difference in seconds
#' @param freq frequency in Hz
#' @param unit degrees or radians
#' @param f frequency
#' @examples

#phaseshiftindegrees = (360*timedifference)/wave period

#Arguments: time difference in seconds, frequency,

timedifftophase<- function(tdiff = 0.001,freq = 100, unit = "deg"){
  if (unit == "deg"){
    ps_deg<-(360*tdiff*freq)
  return(ps_deg)
    }
  else if (unit == "rad"){
    ps_deg<-(360*tdiff)/(1/freq)
    ps_rad<-(ps_deg*pi)/180
    return(ps_rad)
  }
  else{
    print("other")
  }
  }
a<-timedifftophase(0.5,1)
a


