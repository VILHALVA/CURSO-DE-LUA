-- Classe base abstrata "Animal"
Animal = {}
function Animal:novo(nome)
    local objeto = {nome = nome}
    setmetatable(objeto, self)
    self.__index = self
    return objeto
end

function Animal:falar()
    error("Método abstrato 'falar' deve ser implementado nas subclasses.")
end

-- Subclasse "Cachorro"
Cachorro = Animal:novo("Cachorro")
function Cachorro:falar()
    return "Au Au!"
end

-- Subclasse "Gato"
Gato = Animal:novo("Gato")
function Gato:falar()
    return "Miau!"
end

-- Função para fazer um animal falar
function fazerAnimalFalar(animal)
    print(animal.nome .. " diz: " .. animal:falar())
end

-- Criar instâncias de animais
local rex = Cachorro:novo("Rex")
local whiskers = Gato:novo("Whiskers")

-- Fazer os animais falarem
fazerAnimalFalar(rex)
fazerAnimalFalar(whiskers)
