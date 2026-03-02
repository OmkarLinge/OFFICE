-- RC Channel Simulation 
-- 🎯 What this teaches
-- 	•	RC channel values (1000–2000)
-- 	•	Switch-based logic

local rc = {
    throttle = 1200,
    arm_switch = 1900
}

function checkRC()
    if rc.arm_switch > 1800 then
        print("ARM SWITCH ON")
    else
        print("ARM SWITCH OFF")
    end

    print("Throttle value:", rc.throttle)
end

checkRC()

-- 🧠 Drone Mapping
-- → RC input decoding on Pixhawk