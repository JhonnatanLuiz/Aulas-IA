--[[
    📚 LIÇÃO 3: MANIPULAÇÃO DE STRINGS
    
    Aprenda a trabalhar com texto em Lua!
]]

print("═══════════════════════════════════════════════════════════")
print("  📚 MANIPULAÇÃO DE STRINGS EM LUA")
print("═══════════════════════════════════════════════════════════\n")

-- Funções de string
local texto = "Aprendendo Lua"

print("📝 Texto original:", texto)
print("\n🔧 FUNÇÕES DE STRING:\n")
print("   string.upper():", string.upper(texto))
print("   string.lower():", string.lower(texto))
print("   string.len():", string.len(texto), "caracteres")
print("   string.reverse():", string.reverse(texto))

-- Substring
print("\n✂️  SUBSTRING:\n")
print("   string.sub(texto, 1, 10):", string.sub(texto, 1, 10))
print("   string.sub(texto, -3):", string.sub(texto, -3))  -- últimos 3

-- Busca
print("\n🔍 BUSCAR E SUBSTITUIR:\n")
local frase = "Lua é fácil e Lua é poderosa"
print("   Frase:", frase)
print("   string.find('Lua'):", string.find(frase, "Lua"))
print("   string.gsub('Lua', 'Python'):", string.gsub(frase, "Lua", "Python"))

-- Formatação
print("\n📋 FORMATAÇÃO:\n")
local nome = "João"
local idade = 25
local formatado = string.format("Nome: %s, Idade: %d anos", nome, idade)
print("   string.format():", formatado)

-- Repetição
print("\n🔁 REPETIÇÃO:\n")
print("   string.rep('Lua', 3):", string.rep("Lua", 3))
print("   string.rep('=', 30):", string.rep("=", 30))

-- Exercício prático
print("\n🎯 EXERCÍCIO: Validador de Email")
print("─────────────────────────────────────────────────────────\n")

io.write("Digite um email: ")
local email = io.read()

local temArroba = string.find(email, "@")
local temPonto = string.find(email, "%.")

if temArroba and temPonto then
    print("✅ Email válido!")
else
    print("❌ Email inválido!")
end

print("\n═══════════════════════════════════════════════════════════\n")
