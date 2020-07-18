#'Convert
#'
#'Convert between dB and Pa
#'
#'S2 (time shifted sound), Tadd (time added), Time (time)
#' @param v1 speed of first one
#' @param v2 speed of second one
#' @param direction specify the direction as towards or away from each other
#' @param f frequency
#' @examples
#' timeshiftpressure(Amplitude = 1, freq = 2, distance = 340, c = 340)
#' 1.002374


#convenience function to convert between Pa, uPa, microvars, and dynespercmsquared
convert<-function(from, to, inputval){
  if (from == "Pa"){
    if (to == "uPa"){
      outval<-inputval*1000000
      return(outval)
    }
    #else if (to == "dynespercmsquared"){
    #  outval<-inputval*10
   #   return(outval)
    #}
    else if (to == "ubar"){
      outval<-inputval*10
      return(outval)
    }
  }
  else if(from == "microbar"){
    if(to == "Pa"){
      outval<-inputval/10
      return(outval)
    }
    else if(to == "dynespercmsquared"){
      outval<-inputval
      return(outval)
    }
    else if(to == "uPa"){
      outval<-(inputval/10)*1000000
      return(outval)
    }
  }
  else{
    "Please try again."
  }
}

convert(from = "6Pa", to = "dB",  inputval = 1)
convert(from = "Pa", to = "uPa",  inputval = 1)
convert(from = "Pa", to = "dynespercmsquared",  inputval = 1)
convert(from = "Pa", to = "ubar",  inputval = 1)
convert(from = "Pa", to = "ubar",  inputval = 1)
convert(from = "microbar", to = "Pa",  inputval = 1)
convert(from = "microbar", to = "dynespercmsquared",  inputval = 1)
convert(from = "microbar", to = "uPa",  inputval = 1)