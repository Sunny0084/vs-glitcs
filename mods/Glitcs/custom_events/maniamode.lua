function onEvent(name, value1, value2)
	if name == 'maniamode' then
		if value1 == "On" or value1 == "on" then
			addLuaScript('stages/osu')
			removeLuaSprite('vignette')

		elseif value1 == "Off" or value1 == "off" then
            addLuaScript('stages/purp')
            removeLuaSprite('osu')
		end
	end
end