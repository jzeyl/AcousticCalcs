#'hztocents
#'
#'Convert a frequency interval to cents, semitones, and octaves
#'
#'@examples
#'> hztocents(100,200)
#'[[1]]
#'[1] "1200 cents"
#'
#'[[2]]
#'[1] "12 semitones"
#'
#'[[3]]
#'[1] "1 ocataves"
#'
#' @param f1 first frequency
#' @param f1 second frequency
hztocents<-function(f1,f2){
  cents<-1200*log2(f2/f1)
  semitones<-cents/100
  octaves<-cents/1200
  return(list(paste0(cents," cents"),
              paste0(semitones, " semitones"),
              paste0(octaves, " ocataves")))
}
hztocents(100,200)
hztocents(100,150)
