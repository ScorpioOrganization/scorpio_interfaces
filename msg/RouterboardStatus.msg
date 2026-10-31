# MikroTik RouterBoard state, one message per poll of monitoring/routerboard_monitor.
# NaN = not reported by this device.
# The wifi_*, wifi_client_* and interface_* fields are parallel arrays: index i of every array
# in a group describes the same radio / client / interface.
std_msgs/Header header
string host
bool connected
string error
float32 poll_duration_s
string[] warnings

# System resources
string identity
string board_name
string model
string serial_number
string version
string architecture
string cpu
uint32 cpu_count
float32 cpu_load_pct
uint64 free_memory_bytes
uint64 total_memory_bytes
uint64 free_hdd_bytes
uint64 total_hdd_bytes
float64 uptime_s
float32 temperature_c
float32 cpu_temperature_c
float32 voltage_v

# Radios / virtual APs
string[] wifi_name
string[] wifi_driver                  # wireless | wifi | wifiwave2
string[] wifi_mac_address
string[] wifi_ssid
string[] wifi_mode                    # ap-bridge, station, ap, ...
string[] wifi_band
string[] wifi_channel                 # raw channel string from the monitor command
float32[] wifi_frequency_mhz
string[] wifi_channel_width
float32[] wifi_tx_power_dbm
bool[] wifi_running
bool[] wifi_disabled
string[] wifi_status                  # monitor status / state
float32[] wifi_noise_floor_dbm
float32[] wifi_overall_tx_ccq_pct
uint32[] wifi_client_count

# Associated stations from the registration table.
# tx/rx are from the router's point of view (tx = router -> client).
string[] wifi_client_mac_address
string[] wifi_client_interface
string[] wifi_client_driver
string[] wifi_client_ssid
string[] wifi_client_ip_address
string[] wifi_client_hostname         # from DHCP leases, if available
float32[] wifi_client_signal_dbm
float32[] wifi_client_chain_signal_dbm  # 4 per client (ch0..ch3): client i at [4*i, 4*i+3]
float32[] wifi_client_tx_signal_dbm
float32[] wifi_client_snr_db
float32[] wifi_client_tx_ccq_pct
float32[] wifi_client_rx_ccq_pct
float32[] wifi_client_tx_rate_mbps    # PHY link rate
float32[] wifi_client_rx_rate_mbps
string[] wifi_client_tx_rate_raw
string[] wifi_client_rx_rate_raw
uint64[] wifi_client_tx_bytes
uint64[] wifi_client_rx_bytes
uint64[] wifi_client_tx_packets
uint64[] wifi_client_rx_packets
float64[] wifi_client_tx_throughput_bps  # measured from byte counters between polls
float64[] wifi_client_rx_throughput_bps
float64[] wifi_client_uptime_s
float64[] wifi_client_last_activity_s
bool[] wifi_client_authorized

# Counters and measured throughput for every interface (ether, wlan, bridge, vlan...)
string[] interface_name
string[] interface_type
string[] interface_mac_address
bool[] interface_running
bool[] interface_disabled
uint32[] interface_mtu
uint64[] interface_rx_bytes
uint64[] interface_tx_bytes
uint64[] interface_rx_packets
uint64[] interface_tx_packets
uint64[] interface_rx_errors
uint64[] interface_tx_errors
uint64[] interface_rx_drops
uint64[] interface_tx_drops
float64[] interface_rx_bps            # bits per second, NaN on the first sample
float64[] interface_tx_bps
float64[] interface_rx_pps
float64[] interface_tx_pps
