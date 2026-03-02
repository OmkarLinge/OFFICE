-- GPS Quality Checker (Anti-Jamming Foundation)

function gpsCheck(sats, hdop)
    if sats < 6 or hdop > 2.5 then
        return "GPS WEAK"
    else
        return "GPS GOOD"
    end
end

local gps_data = {
    {sats=10, hdop=1.2},
    {sats=5, hdop=3.0}
}

for _, g in ipairs(gps_data) do
    print("GPS:", gpsCheck(g.sats, g.hdop))
end

-- 🧠 Drone Mapping
-- → Used before enabling AUTO / RTL