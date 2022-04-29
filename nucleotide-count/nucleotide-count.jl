"""
    count_nucleotides(strand)

The frequency of each nucleotide within `strand` as a dictionary.

Invalid strands raise a `DomainError`.

"""

function strToArr(string)
    arr = split(string, "")
    return arr
end

function actualizarDic(dict, letra)
    dict[letra] = dict[letra] + 1
    return dict
end

function count_nucleotides(strand)
    validos = ["A", "C", "G", "T", ""]
    arreglo = strToArr(strand)
    respuestas = Dict('A' => 0, 'C' => 0, 'G' => 0, 'T' =>0)
    for letra in arreglo
        if letra ∉ validos
            throw(DomainError(0))
        end
        if letra ≠ ""
            respuestas = actualizarDic(respuestas, only(letra))
        end
    end
    return respuestas
end
