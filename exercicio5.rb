def divisores(x)
    novalista = []
    for i in x
        if i%3 == 0
            novalista.append(i)
        end
    end
    print novalista
end

x = [3, 6, 7, 8]
puts divisores(x)