local val = 0
local dur = 1

function onEvent(name, value1, value2)
	if name == "Fade_BF" then

		if value1 ~= nil then
			val = tonumber(value1)
		end

		if value2 ~= nil then
			dur = tonumber(value2)
		end

		--------------

		if dur == 0 then
			setProperty('boyfriend.alpha', val);
			setProperty('iconP1.alpha', val);
		else
			doTweenAlpha('characterFadeTween', 'boyfriend', val, dur + 0.01, 'linear')
			doTweenAlpha('characterIconTween', 'iconP1', val, dur, 'linear');
		end
	end
end