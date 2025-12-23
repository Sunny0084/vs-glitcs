function opponentNoteHit()
	if getProperty('dad.curCharacter') == 'szkrics' then
		health = getProperty('health');
		if health > 0.05 then
			setProperty('health', health-0.005);
		end
	end
end