function onEvent(name, value1, value2)
	if name == 'maniamode' then
		if value1 == "On" then
			addLuaScript('stages/osu')
			removeLuaSprite('vignette')

		elseif value1 == "Off" then
            addLuaScript('stages/purp')
            removeLuaSprite('osu')
		end
	end
end