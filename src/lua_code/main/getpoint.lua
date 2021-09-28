local function getPointOuter(xCenter,yCenter,radium,number,starAngle)
    local flag = number
    local proceAngle = starAngle
    local xlist = {}
    local ylist = {}
    repeat
        xlist[flag] = xCenter+radium*(proceAngle)
        ylist[flag] = yCenter+radium*(proceAngle)
        proceAngle = proceAngle +360/number
        flag = flag-1
    until flag == 0
    return xlist,ylist
end