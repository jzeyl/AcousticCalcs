#creates reference human audiogram



#'Creates a dataframe with a human audiogram for reference from Jackson et al. 1999
#'
human_audiogram<-function(){
Hz<-c(4,8,16,32,64,125,250,500,1000,2000,3000,4000,8000,16000,17690.086)
Threshold<-c(105.35573,93.794464,82.49012,59.624504,36.501976,16.976284,10.296443,9.782609,-3.320158,-9.486166,-9.8712885,-10.256411,7.6923075,25.641026,71.02564)
audiogram<-data.frame(cbind(Hz,Threshold))
audiogram<-data.frame(approx(audiogram$Hz,audiogram$threshold,n = 5000))
colnames(audiogram)<-c("Hz","Threshold")
return(audiogram)
}









































