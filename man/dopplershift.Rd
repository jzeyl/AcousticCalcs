% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/4_misc_dopplershift.R
\name{dopplershift}
\alias{dopplershift}
\title{dopplershift}
\usage{
dopplershift(v1 = 10, v2 = 0, c = 340, freq = 300, direction = "towards")
}
\arguments{
\item{v1}{speed of first one}

\item{v2}{speed of second one}

\item{direction}{specify the direction as towards or away from each other}

\item{f}{frequency}
}
\description{
Calculates the doppler shift. Input velocity, frequency. The output gives the new frequency and
the frequency shift
S2 (time shifted sound), Tadd (time added), Time (time)
}
\examples{
dopplershift(v1 = 10, v2 = 0, c = 343, freq = 300, direction = "towards")
$Frequency
[1] 308.7464

$`Percent frequency shift`
[1] 2.915452

}
