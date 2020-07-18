#'Plot inter-receiver waveform differences
#'
#'
#'Calculates the sine wave and time shifted time wave. Output is a list: S1 (first sound),
#'S2 (time shifted sound), Tadd (time added), Time (time)
#' @param angle angle of sound in degrees. 0 is directly in front
#' @param d distance between two ears or receivers
#' @param c speed of sound
#' @param f frequency
#' @examples
#' timeshiftpressure(Amplitude = 1, freq = 2, distance = 340, c = 340)
#' 1.002374

#time delay at 2nd estVar()
onsettimediff<- function(amplitude = 1,freq = 2, distance = 20, c = 340, plot = TRUE){
  t <- seq(from = 0, to = 1, by = 2.272727e-05) # sampling rate = 44 kHz
  sound1<- amplitude*sin((2*pi*freq)*t)
  timeadded<-distance/c# time added in seconds
  sound2<- amplitude*sin((2*pi*freq)*(t-timeadded))
  phaseangle<-360*freq*timeadded#phaseangle in degrees
  mylist<- list("S1" = sound1, "S2" = sound2,"time" = t,
                "Tadded" = timeadded,
                "phase angle" = phaseangle)
  if(plot == TRUE){
    plot(mylist$S1~mylist$t, ylab = "Sound pressure", xlab = "Time (s)")
    lines(mylist$S2~mylist$t)
    legend(0,0,c(paste("Time added:",
                          as.character(mylist$Tadded)),
                 paste("Phase angle",mylist$'phase angle')))
  }
  return(mylist)
}
onsettimediff()
#phaseangle<-360*f*time

#w<-onsettimediff(1,1,340/2, plot = FALSE)
#str(w)
#d<-pressure()
#str(d)
#plot(a$S1~d$time)
#lines(a$S2~d$time)

#plotdiffs<- function(p1,p2,t){
#  plot(p1)
#  lines(p2)
#}

