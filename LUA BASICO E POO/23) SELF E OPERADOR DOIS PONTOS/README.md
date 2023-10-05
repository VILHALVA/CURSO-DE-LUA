# SELF E OPERADOR DOIS PONTOS
Em Lua, o uso de "self" e do operador "dois pontos" (:), em conjunto, é uma convenção comum para trabalhar com orientação a objetos. Eles são usados principalmente para definir e chamar métodos em tabelas (ou objetos) de maneira mais conveniente.

Aqui está como o "self" e o operador "dois pontos" funcionam em Lua:

1. **`self` em Métodos:**

   Quando você define um método em uma tabela (que pode representar uma classe ou um objeto), o primeiro parâmetro desse método é geralmente chamado de `self`. Ele se refere ao próprio objeto ou instância da classe no qual o método está sendo chamado. O uso do `self` permite que você acesse os atributos e métodos do objeto dentro do próprio método.

   Exemplo:

   ```lua
   local MinhaClasse = {}

   function MinhaClasse:novo(nome)
       local objeto = {}
       objeto.nome = nome
       setmetatable(objeto, self)
       self.__index = self
       return objeto
   end

   function MinhaClasse:apresentar()
       print("Olá, eu sou " .. self.nome)
   end

   local objeto1 = MinhaClasse:novo("Alice")
   local objeto2 = MinhaClasse:novo("Bob")

   objeto1:apresentar()
   objeto2:apresentar()
   ```

   No exemplo acima, `self` é usado para se referir ao objeto criado por `MinhaClasse:novo()` dentro do método `apresentar()`.

2. **Operador "Dois Pontos" (:):**

   O operador "dois pontos" (`:`) é usado para chamar métodos em uma tabela de forma mais conveniente. Quando você usa o operador "dois pontos" para chamar um método, o próprio objeto é passado automaticamente como o primeiro argumento (`self`) para o método.

   Exemplo:

   ```lua
   objeto1:apresentar()  -- Chamada do método usando ":"
   ```

   É equivalente a:

   ```lua
   objeto1.apresentar(objeto1)  -- Chamada do método sem ":"
   ```

   O uso do operador "dois pontos" simplifica a chamada de métodos em objetos, tornando o código mais limpo e legível.

Usar `self` e o operador "dois pontos" em conjunto é uma prática comum em Lua para implementar orientação a objetos. Eles tornam o código mais claro e facilitam a passagem do próprio objeto como o primeiro argumento dos métodos.