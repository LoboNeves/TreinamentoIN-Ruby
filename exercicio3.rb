def hashquadrado(x)
    novalista = []
    x.each do |chave,valor|
        novalista.append(valor**2)
    end
    print novalista
end

x = {:chave1 => 5, :chave2 => 30, :chave3 => 20}
puts hashquadrado(x)