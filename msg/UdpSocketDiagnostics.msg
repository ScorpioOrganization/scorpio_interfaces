# Socket level (ScorpioUdp) diagnostics for the scorpio_bridge UDP link.

bool is_running
bool is_panic
uint64 received_bytes
uint64 sent_bytes
uint64 incoming_packets_queue
uint64 outgoing_packets_queue
uint64 new_connections_queue
uint64 panic_count
int64 ns_since_last_panic          # -1 if never panicked
string panic_message               # empty unless panicking
