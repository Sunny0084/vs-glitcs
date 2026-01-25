function onUpdatePost()
    setProperty('iconP1.x', getMidpointX('healthBar')+224)
    setProperty('iconP2.x', getMidpointX('healthBar')-374)
    setProperty('iconP1.y', getMidpointY('healthBar')-75)
    setProperty('iconP2.y', getMidpointY('healthBar')-75)
end