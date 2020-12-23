-- CC Turtle Automatic Torching --
-- 2020/12/14 Ben Petterborg --

-- TODO:
-- Divide the areaLength,areaWidth by placeInterval to get values for loops
-- Make bot move up or down if there is a block in the way
-- Return to home position on exit
-- Optimize paths

-- welcome dialog --
write("Automatic Torching Program v0.0.1")
write("by Ben Petterborg")
write("\nMake sure turtle is fueled and has torches in slot 1\n")

-- startup --
write("areaLength:") -- length of area to torch --
local areaLength = read()

write("areaWidth:") -- width of area to torch --
local areaWidth = read()

write("placeInterval:") -- interval between torch placement --
local placeInterval = read()

-- move turtle 1 block above ground so it has room to place torches --
turtle.up()

-- running --
for i = areaWidth,1,-1 do
    
    write("times left, width:" ..i.. "\n")
    
    for i = areaLength,1,-1 do -- `i` how many times left to run -- 
    
    write("times left, length: " .. i .. "\n")
    turtle.place()
    
        for i = placeInterval,1,-1 do -- go forward for placeInterval --
            turtle.forward()
    
        end
    end

    turtle.turnRight()

    for i = placeInterval,1,-1 do
        -- move right placeInterval blocks --
        turtle.forward()
    end 

    turtle.turnLeft()

    -- return sequence --
    for i = areaLength,1,-1 do
        for i = placeInterval,1,-1 do
            turtle.forward()
        
        end

        -- turn around, to face correct direction
        turtle.turnLeft()
        turtle.turnLeft()


    end    

end

exit()