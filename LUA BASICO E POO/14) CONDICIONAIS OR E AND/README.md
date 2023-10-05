# CONDICIONAIS OR E AND
Em Lua, você pode combinar várias condições lógicas no mesmo teste usando os operadores `and` e `or`, conforme necessário. Isso permite criar expressões lógicas complexas que avaliam várias condições ao mesmo tempo. Aqui estão exemplos que demonstram como fazer isso:

**Combinação de Condições "E" (`and`):**

O operador `and` é usado para verificar se todas as condições especificadas são verdadeiras.

```lua
local idade = 25
local temCarteiraDeMotorista = true

if idade >= 18 and temCarteiraDeMotorista then
    print("Você tem mais de 18 anos e possui carteira de motorista.")
else
    print("Você não atende a ambas as condições.")
end
```

Neste exemplo, usamos `and` para verificar se a idade é maior ou igual a 18 e se a pessoa possui uma carteira de motorista. Ambas as condições devem ser verdadeiras para a mensagem "Você tem mais de 18 anos e possui carteira de motorista." ser impressa.

**Combinação de Condições "OU" (`or`):**

O operador `or` é usado para verificar se pelo menos uma das condições especificadas é verdadeira.

```lua
local cor = "verde"
local fruta = "maçã"

if cor == "verde" or fruta == "maçã" then
    print("A cor é verde ou a fruta é uma maçã (ou ambos).")
else
    print("Nenhuma das condições é atendida.")
end
```

Neste exemplo, usamos `or` para verificar se a cor é "verde" ou se a fruta é uma "maçã" (ou ambas as condições). A mensagem "A cor é verde ou a fruta é uma maçã (ou ambos)." será impressa se pelo menos uma das condições for verdadeira.

**Combinação de "E" e "OU":**

Você também pode combinar `and` e `or` em uma única expressão lógica para criar condições complexas.

```lua
local idade = 22
local estudante = true

if (idade >= 18 and idade <= 30) or estudante then
    print("Você é elegível para um desconto.")
else
    print("Você não atende a nenhuma das condições.")
end
```

Neste exemplo, usamos `(idade >= 18 and idade <= 30) or estudante` para verificar se a idade está entre 18 e 30 anos ou se a pessoa é estudante. Se pelo menos uma das condições for verdadeira, a mensagem "Você é elegível para um desconto." será impressa.

Essa combinação de operadores `and` e `or` permite criar condições lógicas complexas que atendem a várias condições ao mesmo tempo, oferecendo flexibilidade na lógica condicional do seu programa. Certifique-se de usar parênteses para agrupar condições quando estiver combinando operadores para garantir a avaliação correta da expressão.