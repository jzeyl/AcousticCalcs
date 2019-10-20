# AcousticCalcs
Set of R functions for common calculations in acoustics and audiometry

```
Installation:
library(devtools)
devtools::install_github("jzeyl/AcousticCalcs", force = TRUE)
```

Functions:
# Conversions
>dBtoPa()

>PatodB()

# Sound propagation
>transmissionloss() Calculate pressure drop over a distance for spherical or cylindrical spreading

>timedifftophase() Convert time difference to phase difference for a given frequency

>onsettimediff() Calculate the differences in arrival time (and generates two sound waveforms) for a given frequency and distance between ears/recievers 
