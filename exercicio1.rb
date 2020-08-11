def arrays(x)
    soma = 0
    mult = 1
    for i in x
        for l in i
            soma += l
            mult *= l
        end
    end
    puts soma
    puts mult
end

x = [[2, 5, 7], [3, 2, 4, 10], [1, 2, 3]]
puts arrays(x)
