class Aluno
    attr_accessor :matricula, :periodoletivo, :curso, :turmas

    def initialize(matricula, periodoletivo, curso)
        @matricula = matricula
        @periodoletivo = periodoletivo
        @curso = curso
        @turmas = []
    end

    def inscrever(nome_turma)
        @turmas.push(nome_turma)
    end

end

class Usuarios
    attr_accessor :email, :senha, :nome, :nascimento, :logado

    def initialize(email, senha, nome, nascimento)
        @email = email
        @senha = senha
        @nome = nome
        @nascimento = nascimento #levando em conta o formato (dd/mm/aaaa)
        @logado = true
    end

    def idade()
        @nascimento = 2020 - (nascimento[6,4].to_i)
        return @nascimento
    end

    def logar(senha_digitada)
        if senha_digitada = @senha
            @logado = true
        end
    end

    def deslogar()
        @logado = false
    end

end

class Turma
    attr_accessor :nome, :horario, :dias_da_semana, :inscritos, :inscrição_aberta

    def initialize(nome, horario, dias_da_semana, inscritos, inscrição_aberta)
        @nome = nome
        @horario = horario
        @dias_da_semana = []
        @inscritos = []
        @inscrição_aberta = false
    end

    def abrir_inscrição()
        @inscrição_aberta = true
    end

    def fechar_inscrição()
        @inscrição_aberta = false
    end

    def adicionar_aluno(nome_aluno)
        @inscritos.push(nome_aluno)
    end

end

class Professor
    attr_accessor :matricula, :salario, :materias

    def initialize(matricula, salario)
        @matricula = matricula
        @salario = salario.to_f
        @materias = []
    end

    def adicionar_materia(nome_materia)
        @materias.push(nome_materia)
    end
end

class Materia
    attr_accessor :ementa, :nome, :professores

    def initialize(ementa, nome)
        @ementa = ementa
        @nome = nome
        @professores = []
    end

    def adicionar_professor(nome_professor)
        @professores.push(nome_professor)
    end
end
