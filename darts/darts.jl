# submit
function score(x, y)
    d = hypot(x,y)
    d > 10 && return 0
    d > 5 && return 1
    d > 1 && return 5
    return 10

end