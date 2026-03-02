--  Telemetry Logger (Ground Station Style)

function telemetry(tag, value)
    print("[TELEM]", tag, "=", value)
end

telemetry("ALT", 120.5)
telemetry("SPEED", 15.2)
telemetry("MODE", "LOITER")


-- 🧠 Drone Mapping
-- → Data sent to Mission Planner / QGC