"""
    count_nucleotides(strand)

The frequency of each nucleotide within `strand` as a dictionary.

Invalid strands raise a `DomainError`.

"""
function count_nucleotides(strand)
    
    nucletoides = Dict{Char, Int}(c => 0 for c in "ATGC")
    for n in strand
        if n in keys(nucletoides)
            nucletoides[n] += 1
        else
            throw(DomainError(n, "Invalid nucleotides"))
        end
    end
    return nucletoides
end