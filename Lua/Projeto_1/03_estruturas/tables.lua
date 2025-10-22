--[[
    📚 LIÇÃO 7: TABLES (Arrays e Dicionários)
    
    Tables são a ÚNICA estrutura de dados em Lua!
    Elas funcionam como arrays, dicionários, objetos, etc.
]]

print("═══════════════════════════════════════════════════════════")
print("  📚 TABLES EM LUA")
print("═══════════════════════════════════════════════════════════\n")

-- ARRAYS (índices numéricos começam em 1!)
print("📌 1. TABLES COMO ARRAYS\n")
local numeros = {10, 20, 30, 40, 50}

print("📋 Array de números:")
for i, valor in ipairs(numeros) do
    print("   [" .. i .. "] =", valor)
end

print("\n✅ Acessando elementos:")
print("   Primeiro:", numeros[1])    -- Lua começa em 1!
print("   Último:", numeros[#numeros])
print("   Tamanho:", #numeros)

-- Adicionar elementos
table.insert(numeros, 60)  -- Adiciona no final
table.insert(numeros, 1, 5)  -- Adiciona no índice 1
print("\n➕ Após inserções:", table.concat(numeros, ", "))

-- Remover elementos
table.remove(numeros)  -- Remove o último
table.remove(numeros, 1)  -- Remove o índice 1
print("➖ Após remoções:", table.concat(numeros, ", "))

-- DICIONÁRIOS (chave-valor)
print("\n📌 2. TABLES COMO DICIONÁRIOS\n")
local pessoa = {
    nome = "Ana",
    idade = 25,
    cidade = "São Paulo",
    profissao = "Programadora"
}

print("👤 Dados da pessoa:")
for chave, valor in pairs(pessoa) do
    print("   " .. chave .. ":", valor)
end

-- Acessar valores
print("\n✅ Acessando valores:")
print("   Nome:", pessoa.nome)  -- notação ponto
print("   Idade:", pessoa["idade"])  -- notação colchetes

-- Adicionar/modificar
pessoa.email = "ana@email.com"
pessoa.idade = 26
print("\n📝 Após modificações:")
print("   Email:", pessoa.email)
print("   Idade:", pessoa.idade)

-- TABLES MISTAS
print("\n📌 3. TABLES MISTAS\n")
local dados = {
    "primeiro",  -- [1]
    "segundo",   -- [2]
    nome = "João",
    idade = 30,
    "terceiro"   -- [3]
}

print("📊 Table mista:")
print("   dados[1]:", dados[1])
print("   dados.nome:", dados.nome)
print("   dados[3]:", dados[3])

-- TABLES ANINHADAS
print("\n📌 4. TABLES ANINHADAS\n")
local escola = {
    nome = "Escola ABC",
    alunos = {
        {nome = "João", nota = 8.5},
        {nome = "Maria", nota = 9.0},
        {nome = "Pedro", nota = 7.5}
    }
}

print("🏫 Alunos da escola:")
for i, aluno in ipairs(escola.alunos) do
    print(string.format("   %d. %s - Nota: %.1f", i, aluno.nome, aluno.nota))
end

-- EXERCÍCIO: Agenda de contatos
print("\n🎯 EXERCÍCIO: AGENDA DE CONTATOS")
print("─────────────────────────────────────────────────────────\n")

local agenda = {}

function adicionarContato(nome, telefone)
    table.insert(agenda, {nome = nome, telefone = telefone})
    print("✅ Contato adicionado!")
end

function listarContatos()
    if #agenda == 0 then
        print("📭 Agenda vazia!")
    else
        print("📱 CONTATOS:")
        for i, contato in ipairs(agenda) do
            print(string.format("   %d. %s - %s", i, contato.nome, contato.telefone))
        end
    end
end

-- Adicionar alguns contatos
adicionarContato("João", "(11) 99999-1111")
adicionarContato("Maria", "(11) 88888-2222")
adicionarContato("Pedro", "(11) 77777-3333")

print()
listarContatos()

print("\n═══════════════════════════════════════════════════════════\n")
