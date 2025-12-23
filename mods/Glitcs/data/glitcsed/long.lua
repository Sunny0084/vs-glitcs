function onSongStart()
    addHaxeLibrary('flixel.FlxG')
    addHaxeLibrary('flixel.system.FlxSound')
    runHaxeCode([[game.songLength = (134 * 1000);]])
end
