# Health of one radio link from the RouterBoard to a station found by its IP address,
# published by monitoring/routerboard_monitor every poll. NaN = not available.
# tx/rx are from the router's point of view (tx = router -> station).
std_msgs/Header header
string ip_address
bool router_connected      # the router answers its API
bool link_up               # the station is associated to one of the router's radios
string interface           # router radio the station is associated to
string mac_address
float32 signal_dbm
float32 tx_rate_mbps       # PHY link rate
float32 rx_rate_mbps
float64 tx_throughput_bps  # measured from byte counters between polls
float64 rx_throughput_bps
