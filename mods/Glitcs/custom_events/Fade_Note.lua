local val = 0
local dur = 1

function onEvent(name, value1, value2)
	if name == 'Fade_Note' then

		if value1 ~= nil then
			val = tonumber(value1)
		end

		if value2 ~= nil then
			dur = tonumber(value2)
		end

		--------------

		for i = 4,7 do
			if value2 == 0 then
				setPropertyFromGroup('strumLineNotes', i, 'alpha', 0)
			else
				noteTweenAlpha('strumLineNotes'..i, i, val , dur, 'linear');
			end
		end
	end
end