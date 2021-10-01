local function getPointOuter(xCenter,yCenter,radium,number,starAngle)
    local flag = 1
    local proceAngle = starAngle
    local xlist = {}
    local ylist = {}
    repeat
        xlist[flag] = xCenter+radium*math.cos(proceAngle)
        ylist[flag] = yCenter+radium*math.sin(proceAngle)
        proceAngle = proceAngle +(2*math.pi)/number
        flag = flag + 1
    until flag > number
    return xlist,ylist
end

local function getthepoint(number,devidenumber,plist)
    local i = 1
    local listi = 1
    local pdelist = {}
    local p1,p2= plist[i],plist[(i+1)]
        repeat
            local kr = 0
            repeat
                pdelist[listi] = ((devidenumber-kr)*p1 + kr*p2)/devidenumber
                kr = kr + 1
                listi = listi + 1
            until kr == devidenumber
            i = i+1
            if i ~= number then
                p1,p2= plist[i],plist[(i+1)]
            else
                p1,p2= plist[i],plist[(1)]
            end
        until i > number
    return pdelist
end

local function getPointdevide(xCenter,yCenter,radium,number,starAngle,devidenumber)
    local xlist,ylist = {},{}
    local xdelist,ydelist = {},{}
    xlist,ylist = getPointOuter(xCenter,yCenter,radium,number,starAngle)
    xdelist = getthepoint(number,devidenumber,xlist)
    ydelist = getthepoint(number,devidenumber,xlist)
    return xdelist,ydelist
end