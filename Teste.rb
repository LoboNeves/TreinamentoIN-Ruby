class Veiculo
    attr_accessor :cor
    @@quantidade_de_veiculos = 5

    def initialize(cor)
        @cor = cor

    end

end

veiculo = Veiculo.new("Branco")
puts veiculo.cor