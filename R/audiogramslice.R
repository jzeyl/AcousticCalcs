#'audiogramslice
#'
#'Get high and low frequency hearing limits, best sensitivity,
#'and best frequency from an audiogram for a given
#'SPL level in dB. Default linear interpolation
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

audiogramslice<-function(cutoff = 35, dataframe, Hz, threshold){
  besthz<-min(dataframe[[threshold]])
  bestsensitivity<-
    dataframe[[Hz]][dataframe[[threshold]]==min(dataframe[[threshold]])]
print(paste0("best Hz: ",besthz))
print(paste0("best Sensitivity: ",bestsensitivity))
lowflank<-dataframe[[Hz]][dataframe[[threshold]]>cutoff,]#get frequency where audiogram crosses cutoff value
#print(max(lowflank[[Hz]]))
#lowlimit<-max(lowflank$Hz)#lowhz limit
print(dataframe[dataframe[[threshold]]>cutoff,])
}
#& dataframe[[Hz]] <besthz,

audiogramslice(cutoff = 20, dataframe = human_audiogram,
               Hz = "Hz", threshold = "Threshold")


audiogramslice(cutoff = 40, dataframe = human_audiogram,
               Hz = "Hz", threshold = "Threshold")


    df_audiogram$threshold[df_audiogram$threshold==min(df_audiogram$threshold)]
}
  #calculate low Hz limit
  if  (nrow(dataframe[dataframe[[threshold]]>cutoff & dataframe[[Hz]] <besthz,])==0)
    {#if the audiogram does not go above cutoff value, print error

    print("error")
  }
  else{#cut the audiogram into a low flank
    lowflank<-dataframe[dataframe[[threshold]]>cutoff & df_audiogram[[Hz]] <besthz,]#get frequency where audiogram crosses cutoff value
    lowlimit<-max(lowflank$Hz)#lowhz limit
    print(lowlimit)
  }

  #calculate high Hz limit
  if(nrow(df_audiogram[df_audiogram$threshold>cutoff & df_audiogram$Hz >besthz,])==0)
   {# #if the audiogram does not go above cutoff value, get max frequency tested
    print("error")
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
audiogramslice()

