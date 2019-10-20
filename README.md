# AcousticCalcs
Set of R functions for common calculations in acoustics and audiometry

```
Installation:
library(devtools)
devtools::install_github("jzeyl/AcousticCalcs", force = TRUE)
```

Functions:
# Conversions
>dBtoPa() Convert between dB relative to a reference microPascals, and Pascals or microPascals

>PatodB()

>angular() Convert frequency to angular frequency

# Sound propagation
>transmissionloss() Calculate pressure drop over a distance for spherical or cylindrical spreading

>timedifftophase() Convert time difference to phase difference for a given frequency

>onsettimediff() Calculate the differences in arrival time (and generates two sound waveforms) for a given frequency and distance between ears/recievers 

# Impedance calculations

TODO: 
1) compliance of air cavity volume
2) Impedance transformer ratio
3) fluid filled connection cylinder
