"Your optional docstring here"
function distance(a, b)
    if length(a) != length(b)
        throw(ArgumentError("AAA"))
    end
    distancia = 0
    for nucleotido in 1:length(a)
        if a[nucleotido] != b[nucleotido]
            distancia += 1
        end
    end
    return distancia
end
