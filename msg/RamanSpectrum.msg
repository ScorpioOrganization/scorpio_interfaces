# One spectrum from the Raman spectrometer (raman_spectrometer node, ~/spectrum).
# Pixel i maps to element i of both rows of ~/spectral_axis
# (std_msgs/Float32MultiArray, row 0 wavelength [nm], row 1 Raman shift [cm-1]).
# The settings used are in RamanSpectrometerStatus.settings.
std_msgs/Header header
uint16 averaged_frames
bool dark_subtracted          # stored dark frame subtracted (clamped at 0)
bool baseline_removed         # ALS baseline (fluorescence) removed
uint16[] raw                  # detector counts (mean of averaged frames, rounded)
float32[] intensity           # processed counts (dark / baseline correction as flagged)
float32 max_intensity         # max of intensity, edge pixels ignored (y scaling, reference overlay)
