-- Script that loops infinitely to make my pokemon character walk back and forth

-- Sleep function
function sleep (a, emu) 
    local sec = tonumber(os.clock() + a); 
    while (os.clock() < sec) do 
        emu:runFrame()
    end 
end

-- Sprint
emu:addKey(1)

last_save = emu:currentFrame()
while true do
    -- Save every X frames
    if emu:currentFrame() - last_save > 20000 then
        last_save = emu:currentFrame()
        emu:clearKey(1)

        emu:addKey(3)
        sleep(0.01, emu)
        emu:clearKey(3)

        sleep(0.1, emu)

        emu:addKey(0)
        sleep(0.01, emu)
        emu:clearKey(0)

        sleep(0.1, emu)

        emu:addKey(0)
        sleep(0.01, emu)
        emu:clearKey(0)

        sleep(0.1, emu)

        emu:addKey(0)
        sleep(0.01, emu)
        emu:clearKey(0)

        sleep(1, emu)

        emu:addKey(1)
    end
    
    -- Walk left
    emu:addKey(5)
    -- Wait 0.1 seconds
    sleep(0.1, emu)
    -- Stop walking left
    emu:clearKey(5)

    -- Walk right
    emu:addKey(4)
    -- Wait 0.1 seconds
    sleep(0.1, emu)
    -- Stop walking right
    emu:clearKey(4)
end