-- Event notes hooks
function onEvent(name, value1, value2)
    if name == "Lyrics Bf Side" then
        makeLuaText('yappin', 'Lyrics go here!', 250, 500, 350)
        setTextString('yappin',  '' ..value1)
        setTextFont('yappin', 'vcr.ttf')
        setTextColor('yappin', '0xffffff')
        setTextSize('yappin', 35);
        addLuaText('yappin')
        setTextAlignment('yappin', 'center')
        setObjectCamera("yappin", 'hud');
        runTimer('lyricalTho', value2, 1)
    end
end

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'lyricalTho' then
        removeLuaText('yappin', true)
    end
end