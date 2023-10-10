# Os 4 Pilares da Programação Orientada a Objetos (POO)
A Programação Orientada a Objetos (POO) é um paradigma de programação que utiliza objetos para representar e organizar os elementos do programa. Ela é baseada em quatro pilares fundamentais: Encapsulamento, Abstração, Herança e Polimorfismo. Neste artigo, exploraremos cada um desses pilares em detalhes, com exemplos em Lua.

## 1. Encapsulamento

O encapsulamento é um conceito que se refere à proteção dos detalhes internos de um objeto, permitindo o acesso apenas aos elementos relevantes e necessários para o funcionamento do objeto. Em Lua, o encapsulamento pode ser alcançado usando tabelas e funções para controlar o acesso aos atributos de um objeto.

### Exemplo de Encapsulamento em Lua:

```lua
-- Classe "Pessoa" com encapsulamento
Pessoa = {}

function Pessoa:novo(nome)
    local objeto = {nome = nome}

    function objeto:getNome()
        return self.nome
    end

    function objeto:setNome(novoNome)
        self.nome = novoNome
    end

    return objeto
end

local pessoa1 = Pessoa:novo("Alice")
print(pessoa1:getNome())  -- Acesso ao nome através de método get
pessoa1:setNome("Bob")     -- Acesso ao nome através de método set
```

Neste exemplo, os métodos `getNome()` e `setNome(novoNome)` permitem o acesso controlado ao atributo `nome`, implementando o encapsulamento.

## 2. Abstração

A abstração é o processo de simplificar complexidades desnecessárias e destacar apenas os aspectos relevantes de um objeto. Em Lua, a abstração é alcançada definindo classes abstratas com métodos que podem ser implementados por subclasses.

### Exemplo de Abstração em Lua:

```lua
-- Classe abstrata "Veiculo" com método abstrato "acelerar"
Veiculo = {}

function Veiculo:novo()
    local objeto = {}

    function objeto:acelerar()
        error("Método 'acelerar' deve ser implementado nas subclasses.")
    end

    return objeto
end

-- Subclasse "Carro" que herda de "Veiculo"
Carro = Veiculo:novo()

function Carro:acelerar()
    print("Carro acelerando")
end

local meuCarro = Carro:novo()
meuCarro:acelerar()  -- Chama o método da classe "Carro"
```

A classe `Veiculo` é abstrata, com um método `acelerar()` que deve ser implementado pelas subclasses. A classe `Carro` herda de `Veiculo` e implementa o método `acelerar()`, demonstrando a abstração.

## 3. Herança

A herança é um pilar que permite que uma classe (subclasse) herde atributos e métodos de outra classe (superclasse). Em Lua, a herança é alcançada definindo uma classe que herda de outra usando a função `setmetatable()`.

### Exemplo de Herança em Lua:

```lua
-- Classe base "Animal"
Animal = {}

function Animal:novo(nome)
    local objeto = {nome = nome}
    setmetatable(objeto, self)
    self.__index = self
    return objeto
end

-- Subclasse "Cachorro" que herda de "Animal"
Cachorro = Animal:novo("Cachorro")

function Cachorro:latir()
    print(self.nome .. " está latindo.")
end

-- Subclasse "Gato" que herda de "Animal"
Gato = Animal:novo("Gato")

function Gato:miau()
    print(self.nome .. " está miando.")
end

local meuCachorro = Cachorro:novo("Rex")
local meuGato = Gato:novo("Whiskers")

meuCachorro:latir()  -- Chamada do método da classe "Cachorro"
meuGato:miau()        -- Chamada do método da classe "Gato"
```

Neste exemplo, as classes `Cachorro` e `Gato` herdam atributos e métodos da classe base `Animal`, demonstrando o conceito de herança.

## 4. Polimorfismo

O polimorfismo é a capacidade de objetos de classes diferentes responderem ao mesmo método de maneiras diferentes. Em Lua, isso é alcançado chamando métodos com o mesmo nome em objetos de diferentes classes.

### Exemplo de Polimorfismo em Lua:

```lua
-- Classe base "Animal"
Animal = {}

function Animal:novo(nome)
    local objeto = {nome = nome}
    setmetatable(objeto, self)
    self.__index = self
    return objeto
end

-- Subclasse "Cachorro" que herda de "Animal"
Cachorro = Animal:novo("Cachorro")

function Cachorro:falar()
    return "Au Au!"
end

-- Subclasse "Gato" que herda de "Animal"
Gato = Animal:novo("Gato")

function Gato:falar()
    return "Miau!"
end

-- Função polimórfica para fazer animais falarem
function fazerAnimalFalar(animal)
    print(animal.nome .. " diz: " .. animal:falar())
end

local rex = Cachorro:novo("Rex")
local whiskers = Gato:novo("Whiskers")

fazerAnimalFalar(rex)        -- Chamada do método da classe "Cachorro"
fazerAnimalFalar(whiskers)   -- Chamada do método da classe "Gato"
```

Neste exemplo, a função `fazerAnimalFalar(animal)` usa polimorfismo para chamar o método `falar()` em instâncias de diferentes classes de animais, demonstrando como o mesmo método se comporta de maneira diferente em objetos de classes diferentes.

Em resumo, os quatro pilares da POO (Encapsulamento, Abstração, Herança e Polimorfismo) são fundamentais para a criação de código orientado a objetos em Lua ou qualquer outra linguagem que suporte POO. Eles fornecem uma estrutura sólida para criar programas modularizados, reutilizáveis e eficazes.