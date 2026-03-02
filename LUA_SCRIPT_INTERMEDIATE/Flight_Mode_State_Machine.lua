-- Flight_Mode_State_Machine.lua
-- This script manages the state transitions of a flight mode state machine.
-- 🎯 What this teaches
	-- •	States
	-- •	Mode switching
	-- •	Safety checks

local flight_mode = "STANDBY"

function setMode(newMode)
    print("Changing mode:", flight_mode, "→", newMode)
    flight_mode = newMode
end

setMode("ARMED")
setMode("TAKEOFF")
setMode("LOITER")
setMode("LAND")

-- 🧠 Drone Mapping
-- → Maps to ARM → TAKEOFF → LOITER → LAND
