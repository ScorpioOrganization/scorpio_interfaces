uint8 IDLE = 0
uint8 EXECUTE = 1
uint8 HALT = 2
uint8 RESUME = 3
uint8 FINISH = 4
uint8 CANCEL = 5
# The list stopped at an instruction that failed with on_failure stop (AutonomyManagerStatus says which)
uint8 FAIL = 6

uint8 state
