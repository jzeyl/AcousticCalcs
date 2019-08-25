#'Calculates the sine wave and time shifted time wave. Output is a list 'S1' (first sound),
#''S2' time shifted sound, 'Tadd' time added, 'Time; time

#' @param angle angle of sound in degrees. 0 is directly in front
#' @param d distance between two ears or receivers
#' @param c speed of sound
#' @param f frequency
#' @examples
#' timeshiftpressure(Amplitude = 1, freq = 2, distance = 340, c = 340)
#' 1.002374

#time delay at 2nd estVar()
timeshiftpressure<- function(Amplitude = 1,freq = 2, distance = 0, c = 340){
  t <- seq(from = 0, to = 1, by = 2.272727e-05) # sampling rate = 44 kHz
  sound1<- Amplitude*sin((2*pi*freq)*t)
  timeadded<-distance/c
  sound2<- Amplitude*sin((2*pi*freq)*(t-timeadded))
  mylist<- list("S1" = sound1, "S2" = sound2,"Tadded" = timeadded,"time" = t)
  return(mylist)
}

#d<-pressure()
#str(d)
#plot(d$S1~d$time)
#lines(d$S2~d$time)

#plotdiffs<- function(p1,p2,t){
#  plot(p1)
#  lines(p2)
#}

