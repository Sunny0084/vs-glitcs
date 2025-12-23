function onCreate()
	makeLuaSprite('osu', 'osu', 100, 270);
	setScrollFactor('osu', 1, 1);

	addLuaSprite('osu', false);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end