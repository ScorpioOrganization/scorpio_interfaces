# State of autonomy's safety monitor, the gate between the autonomy movers' /autonomy/cmd_vel and the
# drive's /cmd_vel. Operator teleop does not pass through it.
builtin_interfaces/Time stamp

uint8 IDLE = 0         # no autonomy commands: nothing is published, teleop has the drive
uint8 OK = 1           # commands forwarded
uint8 SLOWED = 2       # commands forwarded at speed_scale
uint8 STOPPED = 3      # commands blocked (reason says why)
uint8 BACKING_OFF = 4  # after a tilt stop the monitor drives back along the way it came

uint8 state
# STOPPED stays until ~/reset or until the commands pause (the mover gave up); a stop for an
# obstacle in the corridor is not latched and lets motion away from it through
bool latched
# The localization (Fast-LIO) cannot be believed: stale, jumped or turning unlike the gyro. The rover
# stays stopped until ~/reset_localization, which ~/reset does not replace
bool localization_fault
# Why the commands are slowed or stopped, empty when OK
string reason
# 0..1, the factor applied to the forwarded commands
float32 speed_scale
# The body's attitude from the LiDAR's IMU (rad, pitch positive nose up, roll positive left side up)
float32 pitch
float32 roll
# Distance from the body to the closest step or obstacle in the commanded direction (m), -1 none seen
float32 obstacle_distance
