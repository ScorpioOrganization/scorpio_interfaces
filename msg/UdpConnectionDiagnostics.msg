# Per remote peer (ScorpioUdpConnection) diagnostics for the scorpio_bridge UDP link.

# ScorpioUdpConnection::State
uint8 STATE_NEW = 0
uint8 STATE_CONNECTING = 1
uint8 STATE_CONNECTED = 2
uint8 STATE_CLOSED = 3
uint8 STATE_REJECTED = 4
uint8 STATE_ERROR = 5

string remote_ip                   # dotted IPv4, e.g. "10.0.0.1"
uint16 remote_port
uint64 connection_id
uint8 state                        # meaningful only when has_handle is true
bool has_handle
bool is_alive
bool is_panic
int64 ns_since_last_packet         # -1 if no packet received yet
int64 ns_since_last_heartbeat      # -1 if no heartbeat received yet
int64 ns_since_last_panic          # -1 if never panicked
uint64 received_packet_count
uint64 received_heartbeat_count
uint64 sent_heartbeat_count
uint64 sent_partial_heartbeat_count
uint64 retransmission_count
uint64 received_bytes
uint64 sent_bytes
uint64 panic_count
uint64 incoming_packets_queue
uint64 accepted_streams_queue
string panic_message               # empty unless panicking

# Aggregated stream (ScorpioUdpStream) statistics for this connection.
# Populated only on the ~/diagnostics/full topic; left zero on ~/diagnostics/link.
uint32 total_streams
uint32 streams_active
uint32 streams_panicking
uint64 sum_duplicate_count
uint64 sum_out_of_history_drop_count
uint64 sum_expired_unreliable_fragment_count
uint64 sum_reorder_count
uint64 sum_stream_panic_count
