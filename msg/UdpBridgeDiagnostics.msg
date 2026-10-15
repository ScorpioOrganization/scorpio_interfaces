# Top level scorpio_bridge ScorpioUDP diagnostics snapshot.
# Published on both ~/diagnostics/link (5 Hz, detailed=false) and
# ~/diagnostics/full (1 Hz, detailed=true, stream aggregates populated).

builtin_interfaces/Time stamp      # ROS wall clock at publish time
int64 provider_time_ns             # ScorpioUdp time-provider "now" used to compute the deltas
bool detailed                      # true when per-connection stream aggregates are populated
scorpio_interfaces/UdpSocketDiagnostics socket
scorpio_interfaces/UdpConnectionDiagnostics[] connections
