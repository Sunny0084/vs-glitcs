function onCreate()
	for i = 0, getProperty('unspawnNotes.length') - 1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Mania' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'noteSkins\\mania');
		end
	end
end