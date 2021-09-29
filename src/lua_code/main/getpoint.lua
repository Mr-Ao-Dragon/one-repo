local function getPointOuter(xCenter,yCenter,radium,number,starAngle)
    local flag = number
    local proceAngle = starAngle
    local xlist = {}
    local ylist = {}
    repeat
        xlist[flag] = xCenter+math.sin(radium*(proceAngle))
        ylist[flag] = yCenter+math.cos(radium*(proceAngle))
        proceAngle = proceAngle +2*math.pi/number
        flag = flag-1
    until flag == 0
    return xlist,ylist
end
local function getPointdevide(xCenter,yCenter,radium,number,starAngle,devidenumber)
    local plist = {}
    plist['x'],plist['y'] = getPointOuter(xCenter,yCenter,radium,number,starAngle)
    for key,v in pairs(plist) do
        local i = 1
        local listi = 1
        local pdelist = {}
        local p1,p2= v[i],v[(i+1)]
            repeat
                local kr = 1
                repeat
                    pdelist[listi] = ((devidenumber-kr)*p1 + kr*p2)/devidenumber
                    kr = kr + 1
                until kr == devidenumber
                i = i+1
                p1,p2= v[i],v[(i+1)]
            until i== number
    end
end