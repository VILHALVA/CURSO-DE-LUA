-- Arrays (Tabelas indexadas) - Armazenar nomes dos alunos
local alunos = {"Alice", "Bob", "Carol", "David", "Eva"}

-- Matriz (Tabela multidimensional) - Armazenar notas dos alunos em diferentes disciplinas
local notas = {
    {nome = "Alice", matematica = 90, historia = 85, ciencias = 88},
    {nome = "Bob", matematica = 78, historia = 92, ciencias = 87},
    {nome = "Carol", matematica = 85, historia = 76, ciencias = 94},
    {nome = "David", matematica = 88, historia = 80, ciencias = 90},
    {nome = "Eva", matematica = 92, historia = 89, ciencias = 83}
}

-- Dicionário (Tabela associativa) - Armazenar informações detalhadas sobre os alunos
local alunosInfo = {
    Alice = {idade = 18, cidade = "Cidade A", genero = "Feminino"},
    Bob = {idade = 19, cidade = "Cidade B", genero = "Masculino"},
    Carol = {idade = 17, cidade = "Cidade C", genero = "Feminino"},
    David = {idade = 20, cidade = "Cidade D", genero = "Masculino"},
    Eva = {idade = 18, cidade = "Cidade E", genero = "Feminino"}
}

-- Imprimir lista de nomes de alunos
print("Lista de Alunos:")
for i, nome in ipairs(alunos) do
    print(i, nome)
end

-- Imprimir notas dos alunos
print("\nNotas dos Alunos:")
for _, aluno in ipairs(notas) do
    print("Nome:", aluno.nome)
    print("Matemática:", aluno.matematica)
    print("História:", aluno.historia)
    print("Ciências:", aluno.ciencias)
    print()
end

-- Imprimir informações detalhadas sobre os alunos
print("\nInformações Detalhadas sobre Alunos:")
for nome, info in pairs(alunosInfo) do
    print("Nome:", nome)
    print("Idade:", info.idade)
    print("Cidade:", info.cidade)
    print("Gênero:", info.genero)
    print()
end
