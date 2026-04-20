# Waypoint types
uint8 PASS=0
uint8 HOLD=1
uint8 type  

# Waypoint coordinates NED
float64 x # [m] 
float64 y # [m]
float64 heading # [-π,π] 

float64 radius # Distance from waypoint to consider it a valid entry
bool keep_on_track # If waypoint heading should be facing the course

#Only used for waypoint type HOLD:
bool hold # True if position should be held
float64 time_to_hold # Time the position should be held for

