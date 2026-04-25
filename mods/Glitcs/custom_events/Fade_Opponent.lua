local val = 0
local dur = 1

function onEvent(name, value1, value2)
	if name == "Fade_Opponent" then

		if value1 ~= nil then
			val = tonumber(value1)
		end

		if value2 ~= nil then
			dur = tonumber(value2)
		end

		--------------

		if dur == 0 then
			setProperty('dad.alpha', val);
			setProperty('iconP2.alpha', val);
		else
			doTweenAlpha('characterFadeTween', 'dad', val, dur, 'linear')
			doTweenAlpha('characterIconTween', 'iconP2', val, dur, 'linear');
		end
	end
end