# Raman spectrometer state (raman_spectrometer node, ~/get_status, latched).
# Published at status_rate_hz and on every change.
# Fields are ordered by size so the generated C++ struct has as little padding as possible.
uint8 STATE_DISCONNECTED = 0
uint8 STATE_CONNECTING = 1
uint8 STATE_IDLE = 2          # connected, not capturing
uint8 STATE_CAPTURING = 3

std_msgs/Header header
string last_error
string serial_number
string reference_name

RamanSettings settings        # current values; change them with ~/set_settings
float32 heatsink_temperature_c
float32 sensor_temperature_c
float32 frame_rate_hz
uint32 frames_captured
uint32 dark_frames            # frames in the dark accumulator / stored dark
uint32 reference_count
int32 reference_index         # -1 = none loaded

uint16 pixel_count

uint8 state
uint8 hw_revision
uint8 fw_revision
bool simulated
bool capture_enabled
bool dark_collecting
bool dark_available
