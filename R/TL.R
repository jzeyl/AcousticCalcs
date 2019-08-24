#description - calculates the transmission loss from geometric
#spreading, either spherical or cylindrical calculateddB drop
#
#' Calculate pressure drop for spherical spreading. 6 dB per distance doubled
#'
#' @param r1 distance
#' @export
#' @examples
#' pressuredrop(2)
#' 6

pressuredrop<- function(r, Pa = NULL){
  TL<- 20*log(r, base = 10)
  return(TL)
  }
