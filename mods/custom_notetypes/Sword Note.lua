function onCreate()
	for i = 0, getProperty('unspawnNotes.length') - 1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Sword Note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'noteSkins\\sword');
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashData.texture', 'noteSplashes\\swordSplash');

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false);
			end
		end
	end
end

function noteMiss(id, noteData, noteType, isSustainNote)
	if noteType == 'Sword Note' then
		setProperty('health', -500);
	end
end

function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'Sword Note' then
		triggerEvent('Play Animation', 'dodge', '1')
		triggerEvent('Play Animation', 'alt', '0')
	end
end