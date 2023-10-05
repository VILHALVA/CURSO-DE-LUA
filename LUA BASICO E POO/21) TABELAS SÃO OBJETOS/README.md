# TABELAS SÃO OBJETOS
Em Lua, tabelas são consideradas objetos, e elas desempenham um papel central na implementação de Programação Orientada a Objetos (POO). A flexibilidade das tabelas em Lua permite que você modele objetos, classes e métodos usando o paradigma orientado a objetos, embora Lua não seja estritamente uma linguagem orientada a objetos.

Aqui estão alguns conceitos importantes relacionados à implementação de POO usando tabelas em Lua:

1. **Objetos como Tabelas:**
   - Em Lua, você pode criar objetos representados por tabelas. Os atributos do objeto são definidos como campos da tabela, e os métodos são definidos como funções na tabela.

2. **Classes como Tabelas:**
   - Você pode usar tabelas como classes para definir modelos de objetos. As tabelas de classe geralmente contêm métodos que atuam em objetos dessa classe e campos para armazenar atributos comuns a todos os objetos dessa classe.

3. **Métodos:**
   - Métodos são funções definidas em tabelas que atuam em objetos dessa tabela. Eles operam nos atributos do objeto e podem ser chamados usando a notação de ponto ou de dois-pontos.

   Exemplo de definição de método em uma tabela:

   ```lua
   local minhaClasse = {}

   function minhaClasse:metodo1()
       -- código do método
   end
   ```

   Chamando o método:

   ```lua
   local meuObjeto = minhaClasse
   meuObjeto:metodo1()  -- Chamada do método
   ```

4. **Herança:**
   - Você pode implementar herança usando tabelas em Lua. Uma tabela derivada herda métodos e atributos de uma tabela base.

   Exemplo de herança:

   ```lua
   local ClasseBase = {}
   ClasseBase.atributo = 0

   function ClasseBase:metodo()
       -- código do método
   end

   local ClasseDerivada = {}
   setmetatable(ClasseDerivada, { __index = ClasseBase })  -- Define a tabela base

   local objetoDerivado = setmetatable({}, { __index = ClasseDerivada })  -- Cria um objeto derivado
   objetoDerivado:metodo()  -- Chama o método da classe base
   ```

5. **Encapsulamento:**
   - O encapsulamento pode ser implementado usando convenções de nomenclatura para distinguir entre membros públicos e privados de uma tabela. Não há um mecanismo de acesso privado real, mas é uma prática comum adotar convenções como usar um prefixo `_` para indicar membros privados.

6. **Polimorfismo:**
   - Em Lua, o polimorfismo pode ser implementado permitindo que várias tabelas tenham métodos com o mesmo nome. Isso permite que diferentes objetos respondam de maneira semelhante a chamadas de métodos comuns.

Tabelas em Lua são versáteis e oferecem suporte para a implementação de muitos conceitos de POO. Embora Lua não tenha recursos de orientação a objetos tão formalmente definidos como em algumas outras linguagens, essa flexibilidade permite que você crie sistemas orientados a objetos eficazes em Lua.