--  Failsafe Decision Engine (Advanced Failsafe Logic)
-- 🎯 What this teaches
-- 	•	Multi-parameter decision making
-- 	•	Failsafe prioritization
--  •	Conditional logic chains

function failsafe(battery, gps_ok, rc_ok)
    if not rc_ok then
        return "RC LOST → RTL"
    elseif battery < 10.5 then
        return "BATTERY CRITICAL → LAND"
    elseif not gps_ok then
        return "GPS LOST → LOITER"
    else
        return "FLIGHT OK"
    end
end

print(failsafe(12.0, true, true))
print(failsafe(10.2, true, true))
print(failsafe(12.0, false, true))
print(failsafe(12.0, true, false))

-- 🧠 Drone Mapping
-- → Real failsafe priority logic