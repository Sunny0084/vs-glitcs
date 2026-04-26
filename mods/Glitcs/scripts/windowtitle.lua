function onCreatePost()
    setPropertyFromClass('openfl.Lib', 'application.window.title', "Friday Night Glitcsin' - "..songName)
end

function onDestroy()
    setPropertyFromClass('openfl.Lib', 'application.window.title', "Friday Night Glitcsin'")
end