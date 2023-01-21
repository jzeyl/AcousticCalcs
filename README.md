**Note this is a work in progress - several functions may be incomplete**

# AcousticCalcs
The AcoustiCalcs package is a set of convenience functions for common calculations in acoustics and audiometry. 

# Installation:
```
library(devtools)
devtools::install_github("jzeyl/AcousticCalcs", force = TRUE)
```

# Functions
|Category|function|description|
|-----|-----|-----|
|Unit conversion|hztocents()| convert a frequency interval to cents, semitones, and octaves
|Sound propagation|onsettimediff()| Plot the time difference and phase angle differences between a sound wave passing through two recievers. input: frequency, distance between sensors, speed of sound. output: a list containing the two sound waves, time difference, and phase difference, an oscillogram plot of the wave if plot = TRUE|
||dopplershift()| Input the speeds of sound source and receiver, and the speed of sound, and direction of movement between sources. Output: shifted frequency|
||pressure_transmissionloss()| input the distance, level of the sound source. Can be converted for raw values or dB. Simply 1/r, spherical spreading.Output: get the amount of (1) transmission loss and (2) new sound level at new location|
|Audiogram metrics| audiogramslice() |	Get high and low frequency hearing limits, best sensitivity, and best frqeuency from an audiogram for a given SPL level.
||humanaudiogram()| data with human audiogram for reference 


![alt text](/audiogramslice.svg)
