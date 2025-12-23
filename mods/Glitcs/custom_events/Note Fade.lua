function onEvent(name, value1, value2)
	if name == 'Note Fade' then
		for i = 4,7 do
			if value2 == 0 then
				setPropertyFromGroup('strumLineNotes', i, 'alpha', 0)
			else
				noteTweenAlpha('strumLineNotes'..i, i, value1 , value2, 'linear');
			end
		end
	end
end