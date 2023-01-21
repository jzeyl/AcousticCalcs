#'humanaudiogram
#'
#'Creates a dataframe with a human audiogram for reference from Jackson et al. 1999
#' Jackson, L.L., Heffner, R.S., Heffner, H.E., 1999. Free-field audiogram of the Japanese macaque (Macaca fuscata). The Journal of the Acoustical Society of America 106, 3017-3023. https://doi.org/10.1121/1.428121

human_audiogram<-function(interpolate=FALSE){
Hz<-c(4,8,16,32,64,125,250,500,1000,2000,3000,4000,8000,16000,17690.086)
Threshold<-c(105.35573,93.794464,82.49012,59.624504,36.501976,16.976284,10.296443,9.782609,-3.320158,-9.486166,-9.8712885,-10.256411,7.6923075,25.641026,71.02564)
#audiogram<-data.frame(cbind(Hz,Threshold))
if(interpolate==TRUE){
  audiogram<-as.data.frame(approx(Hz,Threshold,n = 5000))
}
else{audiogram<-as.data.frame(cbind(Hz,Threshold))
}
colnames(audiogram)<-c("Hz","Threshold")
assign("human_audiogram_",audiogram, envir = .GlobalEnv)
}









































