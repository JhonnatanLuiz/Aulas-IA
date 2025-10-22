--[[
    📦 LIÇÃO 9: MÓDULOS
    
    Módulos permitem organizar código em arquivos separados
    e reutilizar funções entre diferentes programas.
]]

print("═══════════════════════════════════════════════════════════")
print("  📦 MÓDULOS EM LUA")
print("═══════════════════════════════════════════════════════════\n")

-- CRIANDO UM MÓDULO SIMPLES
print("📌 1. ESTRUTURA DE UM MÓDULO\n")
print("   Um módulo é simplesmente uma table que retorna funções:")
print([[
   -- matematica.lua
   local M = {}
   
   function M.somar(a, b)
       return a + b
   end
   
   return M
]])

-- MÓDULO DE EXEMPLO (inline)
print("\n📌 2. MÓDULO MATEMÁTICA (Exemplo)\n")

local matematica = {}

function matematica.somar(a, b)
    return a + b
end

function matematica.subtrair(a, b)
    return a - b
end

function matematica.multiplicar(a, b)
    return a * b
end

function matematica.dividir(a, b)
    if b == 0 then
        return nil, "Erro: divisão por zero!"
    end
    return a / b
end

print("   ✅ Módulo matemática carregado!")
print("   10 + 5 =", matematica.somar(10, 5))
print("   10 - 5 =", matematica.subtrair(10, 5))
print("   10 * 5 =", matematica.multiplicar(10, 5))
print("   10 / 5 =", matematica.dividir(10, 5))

-- MÓDULO DE STRINGS
print("\n📌 3. MÓDULO STRINGS (Exemplo)\n")

local strings = {}

function strings.capitalizar(texto)
    return texto:sub(1, 1):upper() .. texto:sub(2):lower()
end

function strings.inverter(texto)
    return texto:reverse()
end

function strings.contar_palavras(texto)
    local contador = 0
    for palavra in texto:gmatch("%S+") do
        contador = contador + 1
    end
    return contador
end

function strings.remover_espacos(texto)
    return texto:gsub("%s+", "")
end

print("   ✅ Módulo strings carregado!")
local frase = "olá mundo lua"
print("   Original:", frase)
print("   Capitalizada:", strings.capitalizar(frase))
print("   Invertida:", strings.inverter(frase))
print("   Palavras:", strings.contar_palavras(frase))
print("   Sem espaços:", strings.remover_espacos(frase))

-- REQUIRE() - Carregando módulos
print("\n📌 4. USANDO require()\n")
print("   Para carregar módulos externos:")
print([[
   -- No arquivo principal
   local mat = require("matematica")
   print(mat.somar(5, 3))
]])

print("\n   💡 O require() procura em package.path:")
print("   " .. package.path:sub(1, 80) .. "...")

-- MÓDULO COM VARIÁVEIS PRIVADAS
print("\n📌 5. VARIÁVEIS PRIVADAS\n")

local contador_module = (function()
    local M = {}
    local valor = 0  -- Privada!
    
    function M.incrementar()
        valor = valor + 1
    end
    
    function M.decrementar()
        valor = valor - 1
    end
    
    function M.obter()
        return valor
    end
    
    return M
end)()

print("   ✅ Contador criado com variável privada")
print("   Valor inicial:", contador_module.obter())
contador_module.incrementar()
contador_module.incrementar()
print("   Após 2 incrementos:", contador_module.obter())
contador_module.decrementar()
print("   Após 1 decremento:", contador_module.obter())

-- EXERCÍCIO: Módulo de Validação
print("\n🎯 EXERCÍCIO: MÓDULO DE VALIDAÇÃO")
print("─────────────────────────────────────────────────────────\n")

local validacao = {}

function validacao.email(texto)
    return texto:match("^[%w%.]+@[%w%.]+%.%w+$") ~= nil
end

function validacao.cpf(texto)
    local numeros = texto:gsub("[^%d]", "")
    return #numeros == 11
end

function validacao.telefone(texto)
    local numeros = texto:gsub("[^%d]", "")
    return #numeros >= 10 and #numeros <= 11
end

function validacao.senha_forte(texto)
    return #texto >= 8 
        and texto:match("%d") 
        and texto:match("%u") 
        and texto:match("%l")
end

print("📧 Testando validação de email:")
local emails = {"user@example.com", "invalido@", "teste@site.com.br"}
for _, email in ipairs(emails) do
    local valido = validacao.email(email) and "✅" or "❌"
    print(string.format("   %s %s", valido, email))
end

print("\n🔒 Testando validação de senha forte:")
local senhas = {"senha123", "Senha123", "abc", "SuperSenha2024"}
for _, senha in ipairs(senhas) do
    local valido = validacao.senha_forte(senha) and "✅" or "❌"
    print(string.format("   %s %s", valido, senha))
end

print("\n📌 DICA IMPORTANTE:")
print("   Para criar seus próprios módulos:")
print("   1. Crie um arquivo .lua (ex: utils.lua)")
print("   2. Defina uma table local M = {}")
print("   3. Adicione funções em M")
print("   4. Retorne M no final")
print("   5. Use require('utils') para carregar")

print("\n═══════════════════════════════════════════════════════════\n")
