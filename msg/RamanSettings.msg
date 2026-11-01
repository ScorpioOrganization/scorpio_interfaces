# Raman spectrometer acquisition and processing settings (raman_spectrometer node).
# Fields are ordered by size so the generated C++ struct has no padding.
uint32 integration_time_us    # 5000 - 4000000 (line time = exposure)
uint16 offset                 # 0 - 511
uint16 averaging              # frames averaged into one published spectrum (>= 1)
uint8 gain                    # 0 - 63
bool cooling                  # sensor TE cooling
bool dark_subtraction         # subtract the stored dark frame
bool baseline_removal         # remove the ALS baseline (fluorescence)
