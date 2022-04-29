function bob(stimulus)
    caps1 = map(letra->isuppercase(letra), collect(stimulus))
    if last(strip(stimulus, [' ']), 1) == "?" && !all(caps1)
        letras = [char for char in stimulus if isletter(char)]
        letras = String(letras) # la funcion con S coalesce todo en un string
        caps = map(letra->isuppercase(letra), collect(letras))
        if all(caps) && length(caps) > 0
            return "Calm down, I know what I'm doing!"
        else
            return "Sure."
        end
    end
    letras = [char for char in stimulus if isletter(char)]
    letras = String(letras) # la funcion con S coalesce todo en un string
    caps = map(letra->isuppercase(letra), collect(letras))
    espacios = [isspace(char) for char in stimulus]
    if all(espacios)
        return "Fine. Be that way!"
    end
    if length(caps) > 0 && all(caps) && !(last(strip(stimulus, [' ']), 1) == "?")
        return "Whoa, chill out!"
    end
    return "Whatever."
end
# i tried to use 2 different approaches, one map and one comprehension