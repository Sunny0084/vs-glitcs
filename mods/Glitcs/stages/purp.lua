function onCreate()
	-- background shit
	makeLuaSprite('floor', 'floor', -200, -50);
	setScrollFactor('floor', 1, 1);
	makeLuaSprite('vignette', 'vignette', -320, -90);
	setScrollFactor('vignette', 0, 0);

	addLuaSprite('vignette', true);
	addLuaSprite('floor', false);

	close(true);
end