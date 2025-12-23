local boomspeed = 4
local bam = 1
local left = true

local originalCamHUDY = getProperty('camHUD.y')

function onEvent(name, value1, value2)
	if name == "Boingoboingo" then
		boomspeed = tonumber(value1)
		bam = tonumber(value2)
	end
end

function onBeatHit()
	if curBeat % boomspeed == 0 then
		triggerEvent("Add Camera Zoom", 0.005 * bam, 0.035 * bam)
		if boomspeed == 1 and bam == 1 then
			setProperty('camHUD.y', getProperty('camHUD.y'))
			doTweenY('bounceDown', 'camHUD', originalCamHUDY, crochet / 520, 'sineIn')
			triggerEvent("Add Camera Zoom", 0.015 * bam, 0.045 * bam)

			if left then
				setProperty('camHUD.angle', getProperty('camHUD.angle') - 2)
				setProperty('camGame.angle', getProperty('camGame.angle') + 1)
			else
				setProperty('camHUD.angle', getProperty('camHUD.angle') + 2)
				setProperty('camGame.angle', getProperty('camGame.angle') - 1)
			end

			doTweenAngle('tilt', 'camHUD', 0, crochet / 510, 'sineOut')
			doTweenAngle('tiltGame', 'camGame', 0, crochet / 510, 'sineOut')
			left = not left
		end
	end
end