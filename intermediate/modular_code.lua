local Battery = {}

function Battery.check(level)
    if level < 20 then
        print("FAILSAFE!")
    else
        print("Battery OK:", level)
    end
end

Battery.check(15)
Battery.check(80)
