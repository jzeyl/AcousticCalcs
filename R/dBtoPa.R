#description - converts dB to Pa
#input - dB value and reference micropascals
#output - pascals value

#' Convert dB to Pascals
#'
#' This function allows you to convert decibels to Pascals value. Defaults to reference pressure of 20 microPascals.
#' @param dB dB value
#' @param ref reference pressure in micropasals
#' @export
#' @examples
#' dBtoPa(94,20)
#' 1.002374

#arguments: dB value, reference units
dBtoPa<- function (dB,ref = 20) {
  uPa<-20*10^(dB/ref)
  Pa<-uPa/1000000
  #print( ifelse( missing(dB), 'Pa is not specified', paste('a =',a) ) )
  return(Pa)
}
#dBtoPa(93.97,20)
#dBtoPa()
