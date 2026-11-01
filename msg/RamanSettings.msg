# Raman spectrometer acquisition and processing settings (raman_spectrometer node).
uint8 gain                    # 0 - 63
uint16 offset                 # 0 - 511
uint32 integration_time_us    # 5000 - 4000000 (line time = exposure)
bool cooling                  # sensor TE cooling
uint16 averaging              # frames averaged into one published spectrum (>= 1)
bool dark_subtraction         # subtract the stored dark frame
bool baseline_removal         # remove the ALS baseline (fluorescence)
