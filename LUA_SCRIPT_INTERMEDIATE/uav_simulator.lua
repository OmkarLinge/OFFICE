--------------------------------------------------
-- This program simulates a UAV flight system where altitude increases
-- and battery decreases over time. It automatically starts a camera
-- at a certain height and triggers a safety return when battery is low.
--------------------------------------------------

-- Drone state variables (simulated telemetry)
local altitude = 0          -- current drone altitude (meters)
local battery = 100         -- battery percentage
local camera_started = false
local mission_active = true

--------------------------------------------------
-- Function: simulate drone climbing
--------------------------------------------------
function climb()
    altitude = altitude + 5     -- drone climbs 5 meters
    battery = battery - 2       -- battery drains during climb
end

--------------------------------------------------
-- LUA LOGIC SECTION (Mission Logic)
-- Starts camera when altitude > 30m
--------------------------------------------------
function mission_logic()

    -- check altitude condition
    if altitude > 30 and not camera_started then
        
        print("[MISSION] Altitude reached:", altitude)
        print("[MISSION] Starting Camera Payload")

        camera_started = true   -- prevent multiple activation
    end
end

--------------------------------------------------
-- IRM SECTION (Safety Supervisor)
-- monitors system health
--------------------------------------------------
function irm_logic()

    -- battery safety check
    if battery <= 20 then
        print("[IRM] WARNING: Low Battery!")

        mission_active = false
        return "RTL"   -- Return To Launch decision
    end

    return "OK"
end

--------------------------------------------------
-- MAIN FLIGHT LOOP
--------------------------------------------------
while mission_active do

    print("\n--- Drone Status ---")

    -- simulate drone movement
    climb()

    -- display telemetry
    print("Altitude:", altitude, "m")
    print("Battery :", battery, "%")

    -- run mission automation
    mission_logic()

    -- run IRM supervision
    local status = irm_logic()

    -- IRM override decision
    if status == "RTL" then
        print("[SYSTEM] Returning Home...")
        break
    end

    -- wait simulation step
    os.execute("sleep 1")
end

print("\nFlight Ended Safely")