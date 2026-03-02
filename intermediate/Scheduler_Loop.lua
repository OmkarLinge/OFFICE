-- Scheduler Loop (Like ArduPilot update())

local time = 0

function update()
    print("Update tick:", time)
end

while time < 5 do
    update()
    os.execute("sleep 1")
    time = time + 1
end

-- 🧠 Drone Mapping
-- → Same as Lua scripts running at 1Hz / 10Hz