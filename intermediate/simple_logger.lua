function log(level, msg)
    print("[" .. level .. "]", msg)
end

log("INFO", "System boot")
log("WARN", "GPS weak")
log("ERROR", "Sensor failure")
