local val = 0
local dur = 1

function onEvent(name, value1, value2)
	if name == "Fade_GF" then

		if value1 ~= nil then
			val = tonumber(value1)
		end

		if value2 ~= nil then
			dur = tonumber(value2)
		end

		--------------

		if dur == 0 then
			setProperty('gf.alpha', val);
		else
			doTweenAlpha('characterFadeTween', 'gf', val, dur, 'linear')
		end

	end
end