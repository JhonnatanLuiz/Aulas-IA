--[[
    📚 LIÇÃO 5: LOOPS (for, while, repeat)
]]

print("═══════════════════════════════════════════════════════════")
print("  📚 ESTRUTURAS DE REPETIÇÃO EM LUA")
print("═══════════════════════════════════════════════════════════\n")

-- FOR NUMÉRICO
print("📌 1. FOR NUMÉRICO\n")
print("🔢 Contando de 1 a 5:")
for i = 1, 5 do
    print("   ", i)
end

print("\n🔢 Contando de 10 a 1 (decrescente):")
for i = 10, 1, -1 do
    io.write(i, " ")
end
print()

print("\n🔢 Pulando de 2 em 2:")
for i = 0, 10, 2 do
    io.write(i, " ")
end
print()

-- FOR GENÉRICO (ipairs e pairs)
print("\n📌 2. FOR GENÉRICO (tables)\n")
local frutas = {"Maçã", "Banana", "Laranja", "Uva"}

print("🍎 Usando ipairs (arrays):")
for indice, fruta in ipairs(frutas) do
    print("   ", indice, "-", fruta)
end

local pessoa = {nome = "Ana", idade = 25, cidade = "SP"}
print("\n👤 Usando pairs (dicionários):")
for chave, valor in pairs(pessoa) do
    print("   ", chave, "=", valor)
end

-- WHILE
print("\n📌 3. WHILE\n")
local contador = 1
print("🔄 Contando com while:")
while contador <= 5 do
    print("   Contador:", contador)
    contador = contador + 1
end

-- REPEAT-UNTIL
print("\n📌 4. REPEAT-UNTIL\n")
local numero = 1
print("🔁 Contando com repeat:")
repeat
    print("   Número:", numero)
    numero = numero + 1
until numero > 5

-- BREAK E GOTO
print("\n📌 5. BREAK\n")
print("🛑 Parando no número 3:")
for i = 1, 10 do
    if i == 3 then
        print("   BREAK!")
        break
    end
    print("   ", i)
end

-- EXERCÍCIO: Tabuada
print("\n🎯 EXERCÍCIO: GERADOR DE TABUADA")
print("─────────────────────────────────────────────────────────\n")

io.write("Digite um número para ver a tabuada: ")
local num = tonumber(io.read())

if num then
    print("\n📊 Tabuada do " .. num .. ":")
    print(string.rep("─", 25))
    for i = 1, 10 do
        print(string.format("   %d x %2d = %3d", num, i, num * i))
    end
else
    print("❌ Número inválido!")
end

print("\n═══════════════════════════════════════════════════════════\n")
