# What the autonomy manager is doing about failures (autonomy_manager ~/status, latched, on change)
builtin_interfaces/Time stamp

# Recovery ladder: a movement that cannot go on climbs these rungs, one at a time, planning again
# after each; progress toward the goal starts again from the bottom
uint8 RUNG_NONE = 0
uint8 RUNG_WAIT = 1         # wait for the map to settle
uint8 RUNG_LOOK_AROUND = 2  # spin in place, seeing more ground
uint8 RUNG_RETRACE = 3      # back up along the way the rover came
uint8 RUNG_RELAXED = 4      # plan without the soft costs, the limits stay
uint8 RUNG_CLEAR_MAP = 5    # clear the map (drift ghosts), then look around
uint8 RUNG_DIRECT = 6       # straight at the goal without the map (allowed per instruction)

uint64 instruction_pointer
string instruction
uint8 recovery_rung
string recovery_reason
# Moving without the planner's map (RUNG_DIRECT): only the safety monitor guards the rover
bool elevated_risk
# Instructions that failed since the list was started, and the last one ("<index> <name>: <reason>")
uint32 failures
string last_failure
