local songs = {'how-to-be', 'borin', 'almmost', 'szkrics', 'pessimism', 'quote-and-quote-depressed', 'ron-and-shaggy-randomly-sings-against-prehistoric-lizard'}

function onUpdate()
    if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.SPACE') then
        loadSong(songs[getRandomInt(1, #songs)])
    end
end