def string(x)
    novalista = []
    for i in x
        i.to_s
    end
    print x
end

x = [25, 35, 45]
puts string(x)