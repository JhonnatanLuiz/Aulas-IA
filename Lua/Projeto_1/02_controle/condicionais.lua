--[[
    📚 LIÇÃO 4: CONDICIONAIS (if, else, elseif)
]]

print("═══════════════════════════════════════════════════════════")
print("  📚 ESTRUTURAS CONDICIONAIS EM LUA")
print("═══════════════════════════════════════════════════════════\n")

-- IF simples
print("📌 1. IF SIMPLES\n")
local idade = 20
if idade >= 18 then
    print("✅ Você é maior de idade!")
end

-- IF-ELSE
print("\n📌 2. IF-ELSE\n")
local nota = 7.5
if nota >= 7 then
    print("✅ Aprovado! Nota:", nota)
else
    print("❌ Reprovado! Nota:", nota)
end

-- IF-ELSEIF-ELSE
print("\n📌 3. IF-ELSEIF-ELSE\n")
local pontos = 85

if pontos >= 90 then
    print("🏆 Classificação: A (Excelente!)")
elseif pontos >= 80 then
    print("🥈 Classificação: B (Muito bom!)")
elseif pontos >= 70 then
    print("🥉 Classificação: C (Bom!)")
elseif pontos >= 60 then
    print("📊 Classificação: D (Regular)")
else
    print("❌ Classificação: F (Reprovado)")
end

-- OPERADOR TERNÁRIO (usando and/or)
print("\n📌 4. OPERADOR TERNÁRIO EM LUA\n")
local temChuva = false
local levar = temChuva and "guarda-chuva" or "óculos de sol"
print("🌤️  Você deve levar:", levar)

-- EXERCÍCIO: Calculadora de IMC
print("\n🎯 EXERCÍCIO: CALCULADORA DE IMC")
print("─────────────────────────────────────────────────────────\n")

io.write("Digite seu peso (kg): ")
local peso = tonumber(io.read())

io.write("Digite sua altura (m): ")
local altura = tonumber(io.read())

if peso and altura and altura > 0 then
    local imc = peso / (altura ^ 2)
    print(string.format("\n📊 Seu IMC: %.2f", imc))
    
    if imc < 18.5 then
        print("📉 Classificação: Abaixo do peso")
    elseif imc < 25 then
        print("✅ Classificação: Peso normal")
    elseif imc < 30 then
        print("⚠️  Classificação: Sobrepeso")
    else
        print("🔴 Classificação: Obesidade")
    end
else
    print("❌ Valores inválidos!")
end

print("\n═══════════════════════════════════════════════════════════\n")
