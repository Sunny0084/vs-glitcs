function onEvent(name, value1, value2)

	value1 = tonumber(value1)
	value2 = tonumber(value2)

	if name == "BF Fade" then
		if value2 == 0 then
			setProperty('boyfriend.alpha', value1);
			setProperty('iconP1.alpha', value1);
		else
			doTweenAlpha('characterFadeTween', 'boyfriend', value1, value2 + 0.01, 'linear')
			doTweenAlpha('characterIconTween', 'iconP1', value1, value2, 'linear');
		end
	end
end