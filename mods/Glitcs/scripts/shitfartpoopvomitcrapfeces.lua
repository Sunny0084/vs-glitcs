local songs = {'how-to-be', 'szkrics', 'pessimism', 'borin', 'quote-and-quote-depressed', 'benger', 'almmost', 'ron-and-shaggy-randomly-sings-against-prehistoric-lizard'}

function onUpdate()
    if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.SPACE') then
        loadSong(songs[getRandomInt(1, #songs)])
    end
end