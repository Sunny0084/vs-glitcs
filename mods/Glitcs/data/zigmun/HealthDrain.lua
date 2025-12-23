function OnUpdatePost()
   health = getProperty('health')
    if health < 0.5 then
        setProperty('health', health, 0.5);
	end
end