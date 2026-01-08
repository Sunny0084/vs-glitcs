local prevScore = 0

function onCreate()
	for i = 0, getProperty('unspawnNotes.length') - 1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Frog' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'noteSkins\\frog');
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashData.texture', 'noteSplashes\\frogSplash');

			setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true)
			setPropertyFromGroup('unspawnNotes', i, 'noAnimation', true);
		end
	end
end

function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'Frog' then
		playSound('frog', 0.75);

		makeLuaSprite('image', 'frog');
		addLuaSprite('image', true);
		setObjectCamera('image', 'other');
		runTimer('wait', 1);

		setProperty('songScore', prevScore)
		setProperty('combo', getProperty('combo') - 1)
        setProperty('health', getProperty('health') - 0.023)
	end
end

function onUpdate()
	prevScore = getProperty('songScore')
end

function onTimerCompleted(tag, loops, loopsleft)
	if tag == 'wait' then
		doTweenAlpha('byebye', 'image', 0, 1, 'linear');
	end
end
    
function onTweenCompleted(tag)
	if tag == 'byebye' then
		removeLuaSprite('image', true);
	end
end