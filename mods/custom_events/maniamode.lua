function onEvent(name, value1, value2)
	if name == 'maniamode' then
		if string.lower(value1) == "on" then
			addLuaScript('stages/osu')
			removeLuaSprite('vignette')

		elseif string.lower(value1) == "off" then
            addLuaScript('stages/purp')
            removeLuaSprite('osu')
		end
	end
end