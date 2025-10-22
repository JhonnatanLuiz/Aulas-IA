--[[
    📚 LIÇÃO 1: VARIÁVEIS E TIPOS DE DADOS EM LUA
    
    Nesta lição você aprenderá:
    • Como declarar variáveis
    • Tipos de dados em Lua
    • Escopo de variáveis (local vs global)
    • Conversão de tipos
]]

print("═══════════════════════════════════════════════════════════")
print("  📚 VARIÁVEIS E TIPOS DE DADOS EM LUA")
print("═══════════════════════════════════════════════════════════\n")

-- ============================================================
-- 1. DECLARAÇÃO DE VARIÁVEIS
-- ============================================================
print("📌 1. DECLARAÇÃO DE VARIÁVEIS")
print("─────────────────────────────────────────────────────────\n")

-- Em Lua, não é necessário declarar o tipo da variável
nome = "João"           -- String (texto)
idade = 25              -- Number (número inteiro)
altura = 1.75           -- Number (número decimal)
estaEstudando = true    -- Boolean (verdadeiro/falso)
nulo = nil              -- Nil (valor nulo/vazio)

print("✅ Variável 'nome':", nome, "        (tipo:", type(nome), ")")
print("✅ Variável 'idade':", idade, "     (tipo:", type(idade), ")")
print("✅ Variável 'altura':", altura, "  (tipo:", type(altura), ")")
print("✅ Variável 'estaEstudando':", estaEstudando, " (tipo:", type(estaEstudando), ")")
print("✅ Variável 'nulo':", nulo, "      (tipo:", type(nulo), ")")

-- ============================================================
-- 2. TIPOS DE DADOS EM LUA
-- ============================================================
print("\n📌 2. TIPOS DE DADOS EM LUA")
print("─────────────────────────────────────────────────────────\n")

print("🔹 Lua tem 8 tipos básicos:")
print("   1️⃣  nil      - valor nulo/indefinido")
print("   2️⃣  boolean  - true ou false")
print("   3️⃣  number   - números (inteiros e decimais)")
print("   4️⃣  string   - texto entre aspas")
print("   5️⃣  function - funções")
print("   6️⃣  userdata - dados externos (C/C++)")
print("   7️⃣  thread   - corrotinas")
print("   8️⃣  table    - arrays e dicionários")

-- Exemplos práticos
local exemploNil = nil
local exemploBoolean = false
local exemploNumber = 42
local exemploString = "Olá, Lua!"
local exemploFunction = function() return "Sou uma função!" end
local exemploTable = {1, 2, 3, "quatro"}

print("\n✅ Exemplos:")
print("   nil:", exemploNil)
print("   boolean:", exemploBoolean)
print("   number:", exemploNumber)
print("   string:", exemploString)
print("   function:", exemploFunction())
print("   table:", table.concat(exemploTable, ", "))

-- ============================================================
-- 3. ESCOPO DE VARIÁVEIS (LOCAL vs GLOBAL)
-- ============================================================
print("\n📌 3. ESCOPO DE VARIÁVEIS")
print("─────────────────────────────────────────────────────────\n")

-- Variável GLOBAL (acessível em todo o programa)
variavelGlobal = "Eu sou global!"

-- Variável LOCAL (acessível apenas no bloco atual)
local variavelLocal = "Eu sou local!"

print("🌍 Variável Global:", variavelGlobal)
print("🏠 Variável Local:", variavelLocal)

print("\n💡 DICA: Use sempre 'local' para evitar poluição do escopo global!")

-- Exemplo de escopo
do
    local dentroDoBloco = "Só existo aqui dentro"
    print("\n🔹 Dentro do bloco:", dentroDoBloco)
end

-- Esta linha geraria erro se descomentada:
-- print(dentroDoBloco)  -- ERROR: dentroDoBloco é nil aqui

-- ============================================================
-- 4. CONVERSÃO DE TIPOS
-- ============================================================
print("\n📌 4. CONVERSÃO DE TIPOS")
print("─────────────────────────────────────────────────────────\n")

-- String para Number
local textoNumero = "123"
local numero = tonumber(textoNumero)
print("✅ String '123' → Number:", numero, "(tipo:", type(numero), ")")

-- Number para String
local numeroTexto = 456
local texto = tostring(numeroTexto)
print("✅ Number 456 → String:", texto, "(tipo:", type(texto), ")")

-- Conversão falhada retorna nil
local textoInvalido = "abc"
local conversaoFalha = tonumber(textoInvalido)
print("❌ String 'abc' → Number:", conversaoFalha, "(falhou!)")

-- ============================================================
-- 5. MÚLTIPLAS ATRIBUIÇÕES
-- ============================================================
print("\n📌 5. MÚLTIPLAS ATRIBUIÇÕES")
print("─────────────────────────────────────────────────────────\n")

-- Lua permite atribuir valores a múltiplas variáveis de uma vez
local x, y, z = 10, 20, 30
print("✅ x =", x, "| y =", y, "| z =", z)

-- Trocar valores de variáveis (swap)
local a, b = 100, 200
print("\n🔄 Antes da troca: a =", a, ", b =", b)
a, b = b, a  -- Troca os valores
print("🔄 Depois da troca: a =", a, ", b =", b)

-- ============================================================
-- 6. EXERCÍCIO PRÁTICO
-- ============================================================
print("\n📌 6. EXERCÍCIO PRÁTICO")
print("─────────────────────────────────────────────────────────\n")

print("🎯 Crie suas próprias variáveis!\n")

io.write("Digite seu nome: ")
local meuNome = io.read()

io.write("Digite sua idade: ")
local minhaIdade = tonumber(io.read())

io.write("Digite sua altura (ex: 1.75): ")
local minhaAltura = tonumber(io.read())

print("\n✅ RESULTADO:")
print("   Nome:", meuNome, "(tipo:", type(meuNome), ")")
print("   Idade:", minhaIdade, "(tipo:", type(minhaIdade), ")")
print("   Altura:", minhaAltura, "m (tipo:", type(minhaAltura), ")")

-- Verificar maioridade
local ehMaiorDeIdade = minhaIdade >= 18
print("   Maior de idade?", ehMaiorDeIdade, "(tipo:", type(ehMaiorDeIdade), ")")

-- ============================================================
-- 7. RESUMO DA LIÇÃO
-- ============================================================
print("\n📌 7. RESUMO DA LIÇÃO")
print("─────────────────────────────────────────────────────────\n")

print("✅ Você aprendeu:")
print("   • Como declarar variáveis em Lua")
print("   • Os 8 tipos de dados básicos")
print("   • Diferença entre variáveis locais e globais")
print("   • Como converter tipos (tonumber, tostring)")
print("   • Atribuição múltipla e troca de valores")
print("   • Uso da função type() para verificar tipos")

print("\n🎯 Próximo passo: Operadores Matemáticos e Lógicos!")
print("\n═══════════════════════════════════════════════════════════\n")
