--[[
    🧮 PROJETO 1: CALCULADORA COMPLETA
    
    Uma calculadora interativa com operações básicas,
    avançadas, histórico e formatação bonita.
]]

-- Estado da calculadora
local historico = {}
local ultimo_resultado = 0

-- Funções de cálculo
local function somar(a, b)
    return a + b
end

local function subtrair(a, b)
    return a - b
end

local function multiplicar(a, b)
    return a * b
end

local function dividir(a, b)
    if b == 0 then
        return nil, "⚠️  Erro: Divisão por zero!"
    end
    return a / b
end

local function potencia(base, exp)
    return base ^ exp
end

local function raiz_quadrada(n)
    if n < 0 then
        return nil, "⚠️  Erro: Raiz de número negativo!"
    end
    return math.sqrt(n)
end

local function porcentagem(valor, percent)
    return (valor * percent) / 100
end

-- Adicionar ao histórico
local function adicionar_historico(operacao, resultado)
    table.insert(historico, {
        operacao = operacao,
        resultado = resultado,
        timestamp = os.date("%H:%M:%S")
    })
    ultimo_resultado = resultado
end

-- Exibir histórico
local function mostrar_historico()
    print("\n📜 HISTÓRICO DE CÁLCULOS")
    print("════════════════════════════════════════════════════")
    
    if #historico == 0 then
        print("   (vazio)")
    else
        for i, item in ipairs(historico) do
            print(string.format("   [%d] %s | %s = %.4f", 
                i, item.timestamp, item.operacao, item.resultado))
        end
    end
    print("════════════════════════════════════════════════════")
end

-- Limpar histórico
local function limpar_historico()
    historico = {}
    print("🗑️  Histórico limpo!")
end

-- Menu principal
local function menu_calculadora()
    while true do
        print("\n")
        print("╔════════════════════════════════════════════════╗")
        print("║           🧮 CALCULADORA LUA 1.0               ║")
        print("╚════════════════════════════════════════════════╝")
        print()
        print("   OPERAÇÕES BÁSICAS:")
        print("   [1] ➕ Adição")
        print("   [2] ➖ Subtração")
        print("   [3] ✖️  Multiplicação")
        print("   [4] ➗ Divisão")
        print()
        print("   OPERAÇÕES AVANÇADAS:")
        print("   [5] 🔢 Potência (x^y)")
        print("   [6] √  Raiz Quadrada")
        print("   [7] %  Porcentagem")
        print()
        print("   OUTRAS OPÇÕES:")
        print("   [8] 📜 Ver Histórico")
        print("   [9] 🗑️  Limpar Histórico")
        print("   [0] 🚪 Sair")
        print()
        print("   💡 Último resultado:", ultimo_resultado)
        print()
        io.write("➜ Escolha uma opção: ")
        local opcao = io.read()
        
        if opcao == "0" then
            print("\n👋 Até logo!\n")
            break
        elseif opcao == "8" then
            mostrar_historico()
        elseif opcao == "9" then
            limpar_historico()
        elseif opcao == "1" or opcao == "2" or opcao == "3" or opcao == "4" or opcao == "7" then
            -- Operações com 2 números
            io.write("Digite o primeiro número: ")
            local num1 = tonumber(io.read())
            io.write("Digite o segundo número: ")
            local num2 = tonumber(io.read())
            
            if not num1 or not num2 then
                print("❌ Números inválidos!")
            else
                local resultado, erro
                local operacao_texto
                
                if opcao == "1" then
                    resultado = somar(num1, num2)
                    operacao_texto = string.format("%.2f + %.2f", num1, num2)
                elseif opcao == "2" then
                    resultado = subtrair(num1, num2)
                    operacao_texto = string.format("%.2f - %.2f", num1, num2)
                elseif opcao == "3" then
                    resultado = multiplicar(num1, num2)
                    operacao_texto = string.format("%.2f × %.2f", num1, num2)
                elseif opcao == "4" then
                    resultado, erro = dividir(num1, num2)
                    operacao_texto = string.format("%.2f ÷ %.2f", num1, num2)
                elseif opcao == "7" then
                    resultado = porcentagem(num1, num2)
                    operacao_texto = string.format("%.2f%% de %.2f", num2, num1)
                end
                
                if erro then
                    print(erro)
                else
                    print(string.format("\n✅ Resultado: %.4f", resultado))
                    adicionar_historico(operacao_texto, resultado)
                end
            end
        elseif opcao == "5" then
            -- Potência
            io.write("Digite a base: ")
            local base = tonumber(io.read())
            io.write("Digite o expoente: ")
            local exp = tonumber(io.read())
            
            if not base or not exp then
                print("❌ Números inválidos!")
            else
                local resultado = potencia(base, exp)
                print(string.format("\n✅ Resultado: %.4f", resultado))
                adicionar_historico(string.format("%.2f^%.2f", base, exp), resultado)
            end
        elseif opcao == "6" then
            -- Raiz quadrada
            io.write("Digite o número: ")
            local num = tonumber(io.read())
            
            if not num then
                print("❌ Número inválido!")
            else
                local resultado, erro = raiz_quadrada(num)
                if erro then
                    print(erro)
                else
                    print(string.format("\n✅ Resultado: %.4f", resultado))
                    adicionar_historico(string.format("√%.2f", num), resultado)
                end
            end
        else
            print("❌ Opção inválida!")
        end
        
        io.write("\nPressione ENTER para continuar...")
        io.read()
    end
end

-- Iniciar calculadora
print("╔════════════════════════════════════════════════════════════╗")
print("║     BEM-VINDO À CALCULADORA LUA!                           ║")
print("║                                                            ║")
print("║  Esta calculadora possui:                                  ║")
print("║  • Operações básicas e avançadas                           ║")
print("║  • Histórico de cálculos                                   ║")
print("║  • Tratamento de erros                                     ║")
print("║  • Interface amigável                                      ║")
print("╚════════════════════════════════════════════════════════════╝\n")

io.write("Pressione ENTER para começar...")
io.read()

menu_calculadora()
