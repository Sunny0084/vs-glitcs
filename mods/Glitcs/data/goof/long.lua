function onSongStart()
    addHaxeLibrary('flixel.FlxG')
    addHaxeLibrary('flixel.system.FlxSound')
    runHaxeCode([[game.songLength = (90 * 1000);]])
end
