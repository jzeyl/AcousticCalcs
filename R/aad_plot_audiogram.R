library(ggplot2)
ggplot(audiograms, aes(testtone_frequency_in_khz, sound_pressure_level_in_decibel, group = audiogram_experiment_id)) +
  geom_line() +
  scale_x_log10()