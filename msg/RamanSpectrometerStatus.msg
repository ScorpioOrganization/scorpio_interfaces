# Raman spectrometer state (raman_spectrometer node, ~/status, latched).
# Published at status_rate_hz and on every change.
uint8 STATE_DISCONNECTED = 0
uint8 STATE_CONNECTING = 1
uint8 STATE_IDLE = 2          # connected, not capturing
uint8 STATE_CAPTURING = 3

std_msgs/Header header
uint8 state
bool simulated
string last_error

string serial_number
uint8 hw_revision
uint8 fw_revision
uint16 pixel_count

float32 heatsink_temperature_c
float32 sensor_temperature_c

RamanSettings settings        # current values; change them with ~/set_settings
bool capture_enabled
float32 frame_rate_hz
uint32 frames_captured

bool dark_collecting
uint32 dark_frames            # frames in the dark accumulator / stored dark
bool dark_available

uint32 reference_count
int32 reference_index         # -1 = none loaded
string reference_name
