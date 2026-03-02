-- -- Simulated sensor data
-- -- Sensor Health Monitor (IMU / GPS style)

-- 🎯 What this teaches
-- 	•	Table-based sensors
-- 	•	Health checking
-- 	•	Failsafe logic
local sensors = {
    GPS = { healthy = true, sats = 12 },
    IMU = { healthy = true },
    Barometer = { healthy = false }
}

function checkSensors()
    for name, data in pairs(sensors) do
        if not data.healthy then
            print("[FAILSAFE] Sensor failed:", name)
        else
            print("[OK] Sensor healthy:", name)
        end
    end
end

checkSensors()


-- 🧠 Drone Mapping
-- → This is exactly how ArduPilot checks sensor status internally.


