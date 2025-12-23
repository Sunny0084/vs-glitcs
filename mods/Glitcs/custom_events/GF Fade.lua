function onEvent(name, value1, value2)
	
	value1 = tonumber(value1)
	value2 = tonumber(value2)

	if name == "GF Fade" then
		if value2 == 0 then
			setProperty('gf.alpha', value1);
		else
			doTweenAlpha('characterFadeTween', 'gf', value1, value2, 'linear')
		end
	end
end