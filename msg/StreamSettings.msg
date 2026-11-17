# Encoder settings of one streaming video_stream_handler, in encoder-independent units.
#
# Published latched on ~/get_stream_settings with the values actually in effect, and accepted on
# ~/set_stream_settings. In a set message a field left at 0 means "leave unchanged", so a message
# carrying only bitrate_kbps changes only the bitrate. encoder and live_fields are filled only on
# get_stream_settings and are ignored on set.

uint8 PRESET_UNCHANGED=0
uint8 PRESET_FASTEST=1
uint8 PRESET_FAST=2
uint8 PRESET_MEDIUM=3
uint8 PRESET_SLOW=4

# Target bitrate in kbit/s (50 - 50000).
uint32 bitrate_kbps
# Quantizer bounds (1 - 51, qp_min <= qp_max). Lower is sharper and costs more bits; qp_max is the
# quality floor: lower stops the picture going blocky, at the price of overshooting the bitrate.
uint8 qp_min
uint8 qp_max
# Frames between keyframes (1 - 1000).
uint16 keyframe_interval
# One of PRESET_*. Slower spends more encoder time to reach the same quality with fewer bits.
uint8 encoder_preset
# Rate control buffer in milliseconds (10 - 5000).
uint16 vbv_ms

# Get only: GStreamer element doing the encoding, e.g. "x264enc" or "nvv4l2h264enc".
string encoder
# Get only: names of the fields above that apply without restarting the stream. Changing any other
# field briefly stops the stream (about a second) and restarts it on a keyframe.
string[] live_fields
