function score(x, y)
    if hypot(x,y) ≤ 1.0
        return 10
    elseif hypot(x,y) ≤ 5.0
        return 5
    elseif hypot(x, y) ≤ 10.0
        return 1
    else
        return 0
    end
end
