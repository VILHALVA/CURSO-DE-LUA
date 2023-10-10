-- Definição da classe Pessoa
Pessoa = {}

-- Método construtor da classe Pessoa
function Pessoa:novo(nome, idade)
    local objeto = {}  -- Crie uma tabela vazia para representar o objeto
    setmetatable(objeto, self)
    self.__index = self
    objeto.nome = nome
    objeto.idade = idade
    return objeto
end

-- Método para imprimir informações da pessoa
function Pessoa:apresentar()
    print("Nome:", self.nome)
    print("Idade:", self.idade)
end

-- Criar uma instância da classe Pessoa
local pessoa1 = Pessoa:novo("Alice", 25)
local pessoa2 = Pessoa:novo("Bob", 30)

-- Chamar método para apresentar informações
pessoa1:apresentar()
pessoa2:apresentar()
