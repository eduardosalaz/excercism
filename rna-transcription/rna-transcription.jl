function to_rna(dna)
    rna = ""
    complemento = Dict("C" => "G", "G" => "C", "T" => "A", "A" => "U", "" => "")
    dnaArr = split(dna, "")
    for nucleotide in dnaArr
        if nucleotide ∉ keys(complemento)
            throw(ErrorException("Invalid input"))
        end
        rna = rna * complemento[nucleotide]
    end
    return rna
end