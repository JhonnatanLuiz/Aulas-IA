--[[
    🎲 PROJETO 2: JOGO DA ADIVINHAÇÃO
    
    Adivinhe o número secreto entre 1 e 100!
    Receba dicas se o número é maior ou menor.
]]

-- Gerar número aleatório
math.randomseed(os.time())

local function jogar()
    local numero_secreto = math.random(1, 100)
    local tentativas = 0
    local max_tentativas = 10
    local acertou = false
    
    print("\n╔════════════════════════════════════════════════════════════╗")
    print("║           🎲 JOGO DA ADIVINHAÇÃO                           ║")
    print("╚════════════════════════════════════════════════════════════╝")
    print()
    print("   Adivinhe o número secreto entre 1 e 100!")
    print(string.format("   Você tem %d tentativas.", max_tentativas))
    print()
    
    while tentativas < max_tentativas and not acertou do
        tentativas = tentativas + 1
        
        print(string.format("🔢 Tentativa %d de %d", tentativas, max_tentativas))
        io.write("➜ Digite seu palpite: ")
        local palpite = tonumber(io.read())
        
        if not palpite then
            print("❌ Por favor, digite um número válido!")
            tentativas = tentativas - 1  -- Não conta como tentativa
        elseif palpite < 1 or palpite > 100 then
            print("⚠️  O número deve estar entre 1 e 100!")
            tentativas = tentativas - 1  -- Não conta como tentativa
        elseif palpite == numero_secreto then
            acertou = true
            print()
            print("╔════════════════════════════════════════════════════════════╗")
            print("║           🎉 PARABÉNS! VOCÊ ACERTOU! 🎉                    ║")
            print("╚════════════════════════════════════════════════════════════╝")
            print()
            print(string.format("   ✅ O número secreto era: %d", numero_secreto))
            print(string.format("   📊 Você acertou em %d tentativa(s)!", tentativas))
            
            -- Avaliação de desempenho
            if tentativas == 1 then
                print("   ⭐⭐⭐ INCRÍVEL! Primeira tentativa!")
            elseif tentativas <= 3 then
                print("   ⭐⭐ EXCELENTE! Muito bom!")
            elseif tentativas <= 6 then
                print("   ⭐ BOM! Bem feito!")
            else
                print("   ✅ Conseguiu! Continue praticando!")
            end
        elseif palpite < numero_secreto then
            print("📈 O número secreto é MAIOR!")
            
            -- Dica adicional
            local diferenca = numero_secreto - palpite
            if diferenca <= 5 then
                print("   💡 Dica: Está MUITO perto!")
            elseif diferenca <= 15 then
                print("   💡 Dica: Está perto!")
            end
        else
            print("📉 O número secreto é MENOR!")
            
            -- Dica adicional
            local diferenca = palpite - numero_secreto
            if diferenca <= 5 then
                print("   💡 Dica: Está MUITO perto!")
            elseif diferenca <= 15 then
                print("   💡 Dica: Está perto!")
            end
        end
        
        print()
    end
    
    if not acertou then
        print("╔════════════════════════════════════════════════════════════╗")
        print("║           😢 GAME OVER!                                    ║")
        print("╚════════════════════════════════════════════════════════════╝")
        print()
        print(string.format("   O número secreto era: %d", numero_secreto))
        print("   Tente novamente na próxima vez!")
    end
    
    return acertou, tentativas
end

-- Menu principal
local function menu_principal()
    local vitorias = 0
    local derrotas = 0
    local total_tentativas = 0
    
    while true do
        print("\n")
        print("╔════════════════════════════════════════════════════════════╗")
        print("║           🎲 JOGO DA ADIVINHAÇÃO                           ║")
        print("╚════════════════════════════════════════════════════════════╝")
        print()
        print("   📊 ESTATÍSTICAS:")
        print(string.format("   • Vitórias: %d", vitorias))
        print(string.format("   • Derrotas: %d", derrotas))
        if vitorias > 0 then
            local media = total_tentativas / vitorias
            print(string.format("   • Média de tentativas: %.1f", media))
        end
        print()
        print("   [1] 🎮 Jogar")
        print("   [2] 📖 Como Jogar")
        print("   [0] 🚪 Sair")
        print()
        io.write("➜ Escolha uma opção: ")
        local opcao = io.read()
        
        if opcao == "0" then
            print("\n👋 Obrigado por jogar! Até logo!\n")
            break
        elseif opcao == "1" then
            local acertou, tentativas = jogar()
            if acertou then
                vitorias = vitorias + 1
                total_tentativas = total_tentativas + tentativas
            else
                derrotas = derrotas + 1
            end
            
            print()
            io.write("Pressione ENTER para voltar ao menu...")
            io.read()
        elseif opcao == "2" then
            print("\n📖 COMO JOGAR:")
            print("─────────────────────────────────────────────────────────")
            print("   1. O computador escolhe um número secreto de 1 a 100")
            print("   2. Você tem 10 tentativas para adivinhar")
            print("   3. Após cada palpite, você recebe uma dica:")
            print("      • 📈 Se o número é MAIOR")
            print("      • 📉 Se o número é MENOR")
            print("   4. Quanto menos tentativas, melhor sua pontuação!")
            print("─────────────────────────────────────────────────────────")
            print()
            io.write("Pressione ENTER para voltar...")
            io.read()
        else
            print("❌ Opção inválida!")
        end
    end
end

-- Iniciar jogo
print("╔════════════════════════════════════════════════════════════╗")
print("║     BEM-VINDO AO JOGO DA ADIVINHAÇÃO!                      ║")
print("║                                                            ║")
print("║  Teste sua sorte e intuição neste jogo divertido!         ║")
print("║  Tente adivinhar o número secreto com o mínimo de         ║")
print("║  tentativas possível!                                      ║")
print("╚════════════════════════════════════════════════════════════╝\n")

io.write("Pressione ENTER para começar...")
io.read()

menu_principal()
