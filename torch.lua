-- cc turtle that does torch placing  --

-- startup --
write('areaLength:') -- length of area to torch --
local areaLength = read()

write("\n areaWidth") -- width of area to torch --
local areaWidth = read()

write("\n placeInterval:") -- interval between torch placement --
local placeInterval = read()
 
-- confirm options --
write("\n Options are areaLength = " .. areaLength .. "placeInterval = ".. placeInterval .. "areaWidth = " .. areawidth)

-- running -- 
for i = areaLength,1,-1 do -- `i` how many times left to run
    
    write("times left, length: " .. i)
     
    -- place stuff here --

    for i = placeInterval,1,-1 do -- go forward for placeInterval
        turtle.forward()

    end
    
end

exit() -- when done, exit --