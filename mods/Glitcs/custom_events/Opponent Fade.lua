function onEvent(name, value1, value2)
		
	value1 = tonumber(value1)
	value2 = tonumber(value2)

	if name == "Opponent Fade" then
		if value2 == 0 then
			setProperty('dad.alpha', value1);
			setProperty('iconP2.alpha', value1);
		else
			doTweenAlpha('characterFadeTween', 'dad', value1, value2, 'linear')
			doTweenAlpha('characterIconTween', 'iconP2', value1, value2, 'linear');
		end
	end
end