#description - converts Pascals to dB
#input - dB value and reference micropascals. Default is 20 uPa
#output - pascals value
#arguments: dB value, reference units
#example usage

#' Convert Pa to dB
#'
#' Converts Pascals value to dB. Reference pressure defaults to 20 microPascals.
#' @param Pa Pascals value
#' @param ref reference pressure in micropasals
#' @keywords
#' @export
#' @examples
#' PatodB(1,20)
#' 93.9794

PatodB<- function(Pa,ref=20){
  uPa<-Pa*1000000
  dB<-20*log((uPa/ref), base = 10)
  return(dB)
  }
#PatodB(1,20)
#PatodB(0.049,20)
