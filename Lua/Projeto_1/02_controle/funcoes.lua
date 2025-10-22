--[[
    📚 LIÇÃO 6: FUNÇÕES
]]

print("═══════════════════════════════════════════════════════════")
print("  📚 FUNÇÕES EM LUA")
print("═══════════════════════════════════════════════════════════\n")

-- Função simples
print("📌 1. FUNÇÃO SIMPLES\n")
function saudar()
    print("👋 Olá, mundo!")
end
saudar()

-- Função com parâmetros
print("\n📌 2. FUNÇÃO COM PARÂMETROS\n")
function saudarPessoa(nome)
    print("👋 Olá, " .. nome .. "!")
end
saudarPessoa("João")
saudarPessoa("Maria")

-- Função com retorno
print("\n📌 3. FUNÇÃO COM RETORNO\n")
function somar(a, b)
    return a + b
end
local resultado = somar(10, 5)
print("➕ 10 + 5 =", resultado)

-- Múltiplos retornos
print("\n📌 4. MÚLTIPLOS RETORNOS\n")
function calcular(a, b)
    local soma = a + b
    local produto = a * b
    local divisao = a / b
    return soma, produto, divisao
end

local s, p, d = calcular(10, 2)
print("✅ Soma:", s)
print("✅ Produto:", p)
print("✅ Divisão:", d)

-- Funções anônimas
print("\n📌 5. FUNÇÕES ANÔNIMAS\n")
local dobro = function(x)
    return x * 2
end
print("🔢 Dobro de 7:", dobro(7))

-- Funções de ordem superior
print("\n📌 6. FUNÇÕES DE ORDEM SUPERIOR\n")
function aplicar(funcao, valor)
    return funcao(valor)
end

local resultado1 = aplicar(function(x) return x ^ 2 end, 5)
print("🔺 5 ao quadrado:", resultado1)

-- Closures
print("\n📌 7. CLOSURES\n")
function criarContador()
    local contador = 0
    return function()
        contador = contador + 1
        return contador
    end
end

local meuContador = criarContador()
print("📊 Contador:", meuContador())  -- 1
print("📊 Contador:", meuContador())  -- 2
print("📊 Contador:", meuContador())  -- 3

-- EXERCÍCIO: Calculadora de funções
print("\n🎯 EXERCÍCIO: BIBLIOTECA DE FUNÇÕES")
print("─────────────────────────────────────────────────────────\n")

function ehPar(n)
    return n % 2 == 0
end

function fatorial(n)
    if n == 0 or n == 1 then
        return 1
    end
    return n * fatorial(n - 1)
end

function fibonacci(n)
    if n <= 1 then
        return n
    end
    return fibonacci(n - 1) + fibonacci(n - 2)
end

io.write("Digite um número: ")
local num = tonumber(io.read())

if num then
    print("\n✅ RESULTADOS:")
    print("   É par?", ehPar(num))
    if num <= 12 then
        print("   Fatorial:", fatorial(num))
    end
    if num <= 20 then
        print("   Fibonacci:", fibonacci(num))
    end
else
    print("❌ Número inválido!")
end

print("\n═══════════════════════════════════════════════════════════\n")
