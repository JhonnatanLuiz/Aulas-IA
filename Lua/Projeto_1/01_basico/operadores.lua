--[[
    📚 LIÇÃO 2: OPERADORES MATEMÁTICOS E LÓGICOS
    
    Nesta lição você aprenderá:
    • Operadores aritméticos (+, -, *, /, %, ^, //)
    • Operadores relacionais (==, ~=, <, >, <=, >=)
    • Operadores lógicos (and, or, not)
    • Precedência de operadores
]]

print("═══════════════════════════════════════════════════════════")
print("  📚 OPERADORES EM LUA")
print("═══════════════════════════════════════════════════════════\n")

-- ============================================================
-- 1. OPERADORES ARITMÉTICOS
-- ============================================================
print("📌 1. OPERADORES ARITMÉTICOS")
print("─────────────────────────────────────────────────────────\n")

local a = 10
local b = 3

print("🔹 Valores: a =", a, ", b =", b, "\n")

print("➕ Adição (a + b):", a + b)            -- 13
print("➖ Subtração (a - b):", a - b)         -- 7
print("✖️  Multiplicação (a * b):", a * b)     -- 30
print("➗ Divisão (a / b):", a / b)           -- 3.333...
print("📊 Módulo/Resto (a % b):", a % b)      -- 1
print("🔺 Potência (a ^ b):", a ^ b)          -- 1000
print("⬇️  Divisão Inteira (a // b):", a // b) -- 3 (Lua 5.3+)

-- Negação unária
print("\n🔄 Negação (-a):", -a)                -- -10

-- ============================================================
-- 2. OPERADORES RELACIONAIS
-- ============================================================
print("\n📌 2. OPERADORES RELACIONAIS (Comparação)")
print("─────────────────────────────────────────────────────────\n")

local x = 5
local y = 10

print("🔹 Valores: x =", x, ", y =", y, "\n")

print("✅ Igual (x == y):", x == y)           -- false
print("❌ Diferente (x ~= y):", x ~= y)       -- true
print("◀️  Menor que (x < y):", x < y)        -- true
print("▶️  Maior que (x > y):", x > y)        -- false
print("⬅️  Menor ou igual (x <= y):", x <= y) -- true
print("➡️  Maior ou igual (x >= y):", x >= y) -- false

-- Comparação de strings
local str1 = "abc"
local str2 = "xyz"
print("\n📝 Strings: str1 = '" .. str1 .. "', str2 = '" .. str2 .. "'")
print("   str1 < str2:", str1 < str2)  -- true (ordem alfabética)

-- ============================================================
-- 3. OPERADORES LÓGICOS
-- ============================================================
print("\n📌 3. OPERADORES LÓGICOS")
print("─────────────────────────────────────────────────────────\n")

local verdadeiro = true
local falso = false

print("🔹 Valores: verdadeiro =", verdadeiro, ", falso =", falso, "\n")

print("🔗 AND (verdadeiro and falso):", verdadeiro and falso)  -- false
print("🔗 OR (verdadeiro or falso):", verdadeiro or falso)     -- true
print("🔄 NOT (not verdadeiro):", not verdadeiro)              -- false
print("🔄 NOT (not falso):", not falso)                        -- true

-- Tabela verdade AND
print("\n📊 TABELA VERDADE - AND")
print("   true  and true  =", true and true)    -- true
print("   true  and false =", true and false)   -- false
print("   false and true  =", false and true)   -- false
print("   false and false =", false and false)  -- false

-- Tabela verdade OR
print("\n📊 TABELA VERDADE - OR")
print("   true  or true  =", true or true)      -- true
print("   true  or false =", true or false)     -- true
print("   false or true  =", false or true)     -- true
print("   false or false =", false or false)    -- false

-- ============================================================
-- 4. CURTO-CIRCUITO (Short-circuit)
-- ============================================================
print("\n📌 4. AVALIAÇÃO POR CURTO-CIRCUITO")
print("─────────────────────────────────────────────────────────\n")

print("💡 Em Lua, 'and' e 'or' retornam valores, não apenas true/false!\n")

-- AND retorna o primeiro valor falso ou o último valor
print("🔹 'and' retorna:")
print("   5 and 10:", 5 and 10)           -- 10
print("   nil and 10:", nil and 10)       -- nil
print("   false and 10:", false and 10)   -- false

-- OR retorna o primeiro valor verdadeiro ou o último valor
print("\n🔹 'or' retorna:")
print("   5 or 10:", 5 or 10)             -- 5
print("   nil or 10:", nil or 10)         -- 10
print("   false or 10:", false or 10)     -- 10

-- Uso prático: valor padrão
local nome = nil
local nomeExibido = nome or "Anônimo"
print("\n✅ Uso prático (valor padrão):")
print("   nome =", nome)
print("   nomeExibido =", nomeExibido)    -- "Anônimo"

-- ============================================================
-- 5. CONCATENAÇÃO DE STRINGS
-- ============================================================
print("\n📌 5. CONCATENAÇÃO DE STRINGS")
print("─────────────────────────────────────────────────────────\n")

local parte1 = "Olá"
local parte2 = "Mundo"
local frase = parte1 .. " " .. parte2 .. "!"

print("📝 Concatenação com '..':")
print("   parte1:", parte1)
print("   parte2:", parte2)
print("   Resultado:", frase)

-- Concatenar número com string
local numero = 42
local texto = "A resposta é: " .. numero
print("\n✅ Número + String:", texto)

-- ============================================================
-- 6. OPERADOR DE COMPRIMENTO (#)
-- ============================================================
print("\n📌 6. OPERADOR DE COMPRIMENTO (#)")
print("─────────────────────────────────────────────────────────\n")

local texto = "Lua é incrível!"
local lista = {10, 20, 30, 40, 50}

print("📏 Comprimento de string:")
print("   texto:", texto)
print("   #texto:", #texto, "caracteres")

print("\n📏 Tamanho de table (array):")
print("   lista:", table.concat(lista, ", "))
print("   #lista:", #lista, "elementos")

-- ============================================================
-- 7. PRECEDÊNCIA DE OPERADORES
-- ============================================================
print("\n📌 7. PRECEDÊNCIA DE OPERADORES")
print("─────────────────────────────────────────────────────────\n")

print("🔢 Ordem de avaliação (do maior para o menor):")
print("   1. ^          (potência)")
print("   2. not, #, -  (unários)")
print("   3. *, /, //, %(multiplicação, divisão, módulo)")
print("   4. +, -       (adição, subtração)")
print("   5. ..         (concatenação)")
print("   6. <, >, <=, >=, ~=, == (relacionais)")
print("   7. and        (lógico E)")
print("   8. or         (lógico OU)")

-- Exemplos
print("\n✅ Exemplos:")
print("   2 + 3 * 4 =", 2 + 3 * 4)       -- 14 (não 20)
print("   (2 + 3) * 4 =", (2 + 3) * 4)   -- 20
print("   2 ^ 3 ^ 2 =", 2 ^ 3 ^ 2)       -- 512 (2^9, não 64)
print("   (2 ^ 3) ^ 2 =", (2 ^ 3) ^ 2)   -- 64

-- ============================================================
-- 8. EXERCÍCIO PRÁTICO: CALCULADORA SIMPLES
-- ============================================================
print("\n📌 8. EXERCÍCIO PRÁTICO: CALCULADORA")
print("─────────────────────────────────────────────────────────\n")

io.write("Digite o primeiro número: ")
local num1 = tonumber(io.read())

io.write("Digite o segundo número: ")
local num2 = tonumber(io.read())

if num1 and num2 then
    print("\n✅ RESULTADOS:")
    print("   Soma:", num1 + num2)
    print("   Subtração:", num1 - num2)
    print("   Multiplicação:", num1 * num2)
    
    if num2 ~= 0 then
        print("   Divisão:", num1 / num2)
        print("   Resto:", num1 % num2)
    else
        print("   Divisão: Impossível dividir por zero!")
    end
    
    print("   Potência:", num1 ^ num2)
    
    -- Comparações
    print("\n🔍 COMPARAÇÕES:")
    print("   " .. num1 .. " == " .. num2 .. ":", num1 == num2)
    print("   " .. num1 .. " > " .. num2 .. ":", num1 > num2)
    print("   " .. num1 .. " < " .. num2 .. ":", num1 < num2)
else
    print("\n❌ Erro: Digite apenas números válidos!")
end

-- ============================================================
-- 9. RESUMO DA LIÇÃO
-- ============================================================
print("\n📌 9. RESUMO DA LIÇÃO")
print("─────────────────────────────────────────────────────────\n")

print("✅ Você aprendeu:")
print("   • Operadores aritméticos (+, -, *, /, %, ^, //)")
print("   • Operadores relacionais (==, ~=, <, >, <=, >=)")
print("   • Operadores lógicos (and, or, not)")
print("   • Avaliação por curto-circuito")
print("   • Concatenação de strings (..)")
print("   • Operador de comprimento (#)")
print("   • Precedência de operadores")

print("\n🎯 Próximo passo: Manipulação de Strings!")
print("\n═══════════════════════════════════════════════════════════\n")
