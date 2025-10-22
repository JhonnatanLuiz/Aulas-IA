--[[
    🔧 LIÇÃO 8: METATABLES
    
    Metatables permitem alterar o comportamento de tables
    com operadores e métodos especiais (metamétodos).
]]

print("═══════════════════════════════════════════════════════════")
print("  🔧 METATABLES EM LUA")
print("═══════════════════════════════════════════════════════════\n")

-- CONCEITO BÁSICO
print("📌 1. O QUE SÃO METATABLES?\n")
print("   Metatables são tables especiais que definem como")
print("   outras tables devem se comportar com operadores.\n")

-- __add: Sobrecarga de operador +
print("📌 2. __add: OPERADOR DE ADIÇÃO\n")

local vetor1 = {x = 10, y = 20}
local vetor2 = {x = 5, y = 15}

local metaVetor = {
    __add = function(v1, v2)
        return {x = v1.x + v2.x, y = v1.y + v2.y}
    end,
    
    __tostring = function(v)
        return string.format("Vetor(%d, %d)", v.x, v.y)
    end
}

setmetatable(vetor1, metaVetor)
setmetatable(vetor2, metaVetor)

local soma = vetor1 + vetor2
setmetatable(soma, metaVetor)

print("   vetor1:", vetor1.x, vetor1.y)
print("   vetor2:", vetor2.x, vetor2.y)
print("   soma:", soma.x, soma.y)

-- __index: Acesso a chaves inexistentes
print("\n📌 3. __index: VALORES PADRÃO\n")

local padroes = {
    cor = "azul",
    tamanho = "médio"
}

local produto = {}
setmetatable(produto, {__index = padroes})

print("   produto.cor:", produto.cor)  -- Encontra em padrões
print("   produto.tamanho:", produto.tamanho)

produto.cor = "vermelho"  -- Adiciona ao produto
print("   produto.cor (após mudar):", produto.cor)

-- __newindex: Controlar atribuições
print("\n📌 4. __newindex: CONTROLAR ATRIBUIÇÕES\n")

local config = {}
local configReal = {fps = 60}

setmetatable(config, {
    __index = configReal,
    __newindex = function(t, chave, valor)
        print(string.format("   ⚠️  Tentativa de definir '%s' = %s", chave, valor))
        print("   ❌ Configuração bloqueada!")
    end
})

print("   config.fps:", config.fps)
config.volume = 80  -- Tentativa bloqueada!

-- POO (Programação Orientada a Objetos)
print("\n📌 5. POO COM METATABLES\n")

local Animal = {}
Animal.__index = Animal

function Animal:new(nome, som)
    local obj = {nome = nome, som = som}
    setmetatable(obj, self)
    return obj
end

function Animal:falar()
    print(string.format("   🐾 %s diz: %s!", self.nome, self.som))
end

local gato = Animal:new("Mimi", "Miau")
local cachorro = Animal:new("Rex", "Au Au")

gato:falar()
cachorro:falar()

-- __call: Table como função
print("\n📌 6. __call: TABLE COMO FUNÇÃO\n")

local contador = {valor = 0}
setmetatable(contador, {
    __call = function(t)
        t.valor = t.valor + 1
        return t.valor
    end
})

print("   Chamada 1:", contador())
print("   Chamada 2:", contador())
print("   Chamada 3:", contador())

-- EXERCÍCIO: Classe Pessoa
print("\n🎯 EXERCÍCIO: CLASSE PESSOA")
print("─────────────────────────────────────────────────────────\n")

local Pessoa = {}
Pessoa.__index = Pessoa

function Pessoa:new(nome, idade)
    local obj = {nome = nome, idade = idade}
    setmetatable(obj, self)
    return obj
end

function Pessoa:apresentar()
    print(string.format("   👋 Olá! Meu nome é %s e tenho %d anos.", self.nome, self.idade))
end

function Pessoa:aniversario()
    self.idade = self.idade + 1
    print(string.format("   🎂 Feliz aniversário! Agora tenho %d anos.", self.idade))
end

local joao = Pessoa:new("João", 25)
local maria = Pessoa:new("Maria", 30)

joao:apresentar()
joao:aniversario()

maria:apresentar()

print("\n═══════════════════════════════════════════════════════════\n")
