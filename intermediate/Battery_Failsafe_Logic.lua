-- Battery Failsafe Logic 

function batteryFailsafe(voltage)
    if voltage < 10.5 then
        return "CRITICAL → LAND"
    elseif voltage < 11.1 then
        return "LOW → RTL"
    else
        return "NORMAL"
    end
end

local voltages = {12.6, 11.8, 11.0, 10.2}

for _, v in ipairs(voltages) do
    print("Battery:", v, "Status:", batteryFailsafe(v))
end


-- 🧠 Drone Mapping
-- → Same logic used for RTL / LAND triggers