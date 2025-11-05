function onEvent(name, value1)
    if name == "imageflash" then
        makeLuaSprite('image', value1, 0, 0);
        addLuaSprite('image', true);
        setObjectCamera('image', 'other');
    end

    if value1 == '' then
        removeLuaSprite('image', true)
    end
end