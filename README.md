# AcousticCalcs
Set of R functions for common calculations in acoustics and audiometry

```
Installation:
library(devtools)
devtools::install_github("jzeyl/AcousticCalcs", force = TRUE)
```

Functions:
# Unit conversions

>convert() – convert between Pa, uPa, dynes per cm squared, and ubar.
Input the value and the units to convert from and to 

>angular() Convert frequency to angular frequency


# Sound propagation

>onsettimediff() – compute the time difference and phase angle differences between a sound wave, give
input: frequency, distance between sensors, speed of sound
output: a list containing the two sound waves, time difference, and phase difference, an oscillogram plot of the wave if plot = TRUE


>dopplershift() – input the speeds of sound source and receiver, and the speed of sound, and direction of movement between sources
Output: shifted frequency

>pressure_transmissionloss()– input the distance, level of the sound source. Can be converted for raw values or dB. Simply 1/r, spherical spreading.
Output: get the amount of (1) transmission loss and (2) new sound level at new location

![alt text](/acalc.png)


