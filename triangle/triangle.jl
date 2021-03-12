# submit
function is_triangle(sides)
    0 in sides ? false : ((sides[1] + sides[2]) >= sides[3]) && ((sides[2] + sides[3]) >= sides[1]) && ((sides[1] + sides[3]) >= sides[2]) 
end


function is_equilateral(sides)
   is_triangle(sides) ? (sides[1] == sides[2]) && (sides[1] == sides[3]) : false
end

function is_isosceles(sides)
   is_triangle(sides) ? ((sides[1] == sides[2]) || (sides[1] == sides[3]) || (sides[3] == sides[2])) : false
end

function is_scalene(sides)
   is_triangle(sides) ? !is_isosceles(sides) : false
end