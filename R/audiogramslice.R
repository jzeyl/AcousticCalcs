#'audiogramslice
#'
#'Get high and low frequency hearing limits, best sensitivity,
#'and best frequency from an audiogram for a given
#'SPL level in dB.
#'
#' @param cutoff level in dB
#' @param Hz numerical vector with frequencies of the audiogram
#' @param threshold numerical vector with the thresholds
#' @param plot logical term to decide whether to plot audiogram with cutoff values
#' @examples
#' audiogramslice(Hz = Hz_, threshold = threshold_, plot = F)
#'lowlimit highlimit bestsensitivity   besthz
#' 349.5812  752.2525        30.00561 499.8317

#Hz_<-c(1,20,100,200, 500, 1000, 3000)
#threshold_<-c(90,85,50,40,30,40,60)

audiogramslice<-function(cutoff = 35, Hz, threshold, plot = T){
  audiogram<-data.frame()#
  df_audiogram<-as.data.frame(approx(Hz,threshold,n = 5000))#approx function to interpolate audiogram
  df_audiogram
  df_audiogram$Hz<-as.numeric(df_audiogram$x)
  df_audiogram$threshold<-as.numeric(df_audiogram$y)

  besthz<-df_audiogram$Hz[df_audiogram$threshold==min(df_audiogram$threshold)]
  bestsensitivity<-df_audiogram$threshold[df_audiogram$threshold==min(df_audiogram$threshold)]

  #calculate low Hz limit
  if  (nrow(df_audiogram[df_audiogram$threshold>cutoff & df_audiogram$Hz <besthz,])==0)
    {#if the audiogram does not go above cutoff value, get minimum frequency tested

    lowlimit<-min(df_audiogram$Hz)
  }
  else{
    lowflank<-df_audiogram[df_audiogram$threshold>cutoff & df_audiogram$Hz <besthz,]#get frequency where audiogram crosses cutoff value
    lowlimit<-max(lowflank$Hz)#lowhz limit
  }

  #calculate high Hz limit
  if(nrow(df_audiogram[df_audiogram$threshold>cutoff & df_audiogram$Hz >besthz,])==0)
   {# #if the audiogram does not go above cutoff value, get max frequency tested
    highlimit<-max(df_audiogram$Hz)
  }
  else{
    highflank<-df_audiogram[df_audiogram$threshold>cutoff & df_audiogram$Hz >besthz,]#get frequency where audiogram crosses cutoff value
    highlimit<-min(highflank$Hz)#High hz limit
  }
  if(plot == T){
  plot(Hz,threshold, log = "x", type = "l")
  abline(a = cutoff,0)
  abline(v = lowlimit)
  abline(v = highlimit)
  }
  #convert to dataframe and give column names
  limits<-data.frame(lowlimit, highlimit, bestsensitivity,besthz)
  return(limits)

  }
#audiogramslice()

