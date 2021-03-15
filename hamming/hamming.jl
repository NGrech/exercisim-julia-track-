"Function to calculate hamming distance"
function distance(a, b)
    if length(a) != length(b)
        throw(ArgumentError("not same length"))
    end
    return (sum(collect(a) .!= collect(b)))
end