--[[
    🧠 PROJETO 4: QUIZ INTERATIVO
    
    Teste seus conhecimentos com este quiz sobre Lua!
    Perguntas de múltipla escolha com pontuação.
]]

-- Banco de perguntas
local perguntas = {
    {
        questao = "Qual é o índice inicial de um array em Lua?",
        opcoes = {"A) 0", "B) 1", "C) -1", "D) Depende"},
        resposta_correta = "B",
        explicacao = "Em Lua, arrays (tables sequenciais) começam no índice 1, diferente de linguagens como C, Java e JavaScript que começam em 0."
    },
    {
        questao = "Qual palavra-chave é usada para criar variáveis locais?",
        opcoes = {"A) var", "B) let", "C) local", "D) private"},
        resposta_correta = "C",
        explicacao = "A palavra-chave 'local' cria variáveis com escopo local em Lua. Sem ela, as variáveis são globais por padrão."
    },
    {
        questao = "Qual é a ÚNICA estrutura de dados nativa em Lua?",
        opcoes = {"A) Array", "B) Object", "C) Table", "D) Dictionary"},
        resposta_correta = "C",
        explicacao = "Tables são a única estrutura de dados em Lua, mas são extremamente versáteis, funcionando como arrays, dicionários, objetos, etc."
    },
    {
        questao = "Como se concatena strings em Lua?",
        opcoes = {"A) +", "B) &", "C) ..", "D) concat()"},
        resposta_correta = "C",
        explicacao = "O operador '..' é usado para concatenar strings em Lua. Exemplo: 'Olá' .. ' ' .. 'Mundo' resulta em 'Olá Mundo'."
    },
    {
        questao = "Qual operador de desigualdade é usado em Lua?",
        opcoes = {"A) !=", "B) ~=", "C) /=", "D) <>"},
        resposta_correta = "B",
        explicacao = "Lua usa '~=' para verificar desigualdade. Exemplo: if x ~= y then ... end"
    },
    {
        questao = "Qual função retorna o tamanho de uma table sequencial?",
        opcoes = {"A) len()", "B) size()", "C) #", "D) count()"},
        resposta_correta = "C",
        explicacao = "O operador '#' retorna o tamanho de tables sequenciais e strings. Exemplo: #minhaTable ou #minhaString"
    },
    {
        questao = "Como se define uma função em Lua?",
        opcoes = {"A) def nome()", "B) function nome()", "C) func nome()", "D) fn nome()"},
        resposta_correta = "B",
        explicacao = "Funções em Lua são definidas com 'function nome() ... end' ou 'local nome = function() ... end'."
    },
    {
        questao = "Qual é o resultado de: 10 / 3 em Lua 5.3+?",
        opcoes = {"A) 3", "B) 3.0", "C) 3.333...", "D) Erro"},
        resposta_correta = "C",
        explicacao = "Lua 5.3+ tem divisão normal (/) que retorna ponto flutuante, e divisão inteira (//) que retorna inteiro."
    },
    {
        questao = "O que 'pairs()' faz?",
        opcoes = {"A) Cria pares", "B) Itera sobre tables", "C) Une arrays", "D) Divide strings"},
        resposta_correta = "B",
        explicacao = "pairs() é usado para iterar sobre todos os elementos de uma table (incluindo chaves não numéricas)."
    },
    {
        questao = "Qual é o tipo de dado para ausência de valor?",
        opcoes = {"A) null", "B) undefined", "C) nil", "D) void"},
        resposta_correta = "C",
        explicacao = "Em Lua, 'nil' representa a ausência de valor, similar a null/undefined em outras linguagens."
    }
}

-- Embaralhar perguntas
local function embaralhar_perguntas()
    for i = #perguntas, 2, -1 do
        local j = math.random(i)
        perguntas[i], perguntas[j] = perguntas[j], perguntas[i]
    end
end

-- Executar quiz
local function executar_quiz()
    local pontuacao = 0
    local total_perguntas = #perguntas
    local respostas_usuario = {}
    
    print("\n╔════════════════════════════════════════════════════════════╗")
    print("║           🧠 QUIZ SOBRE LUA                                ║")
    print("╚════════════════════════════════════════════════════════════╝")
    print()
    print(string.format("   📝 Você terá %d perguntas para responder.", total_perguntas))
    print("   💯 Cada resposta correta vale 10 pontos.")
    print("   ⏱️  Não há limite de tempo!")
    print()
    io.write("Pressione ENTER para começar...")
    io.read()
    
    -- Embaralhar perguntas
    embaralhar_perguntas()
    
    -- Fazer perguntas
    for i, pergunta in ipairs(perguntas) do
        print("\n" .. string.rep("═", 60))
        print(string.format("❓ PERGUNTA %d de %d", i, total_perguntas))
        print(string.rep("═", 60))
        print()
        print("   " .. pergunta.questao)
        print()
        
        for _, opcao in ipairs(pergunta.opcoes) do
            print("   " .. opcao)
        end
        
        print()
        local resposta_valida = false
        local resposta
        
        while not resposta_valida do
            io.write("➜ Digite sua resposta (A/B/C/D): ")
            resposta = io.read():upper()
            
            if resposta == "A" or resposta == "B" or resposta == "C" or resposta == "D" then
                resposta_valida = true
            else
                print("❌ Resposta inválida! Digite apenas A, B, C ou D.")
            end
        end
        
        -- Verificar resposta
        local correta = resposta == pergunta.resposta_correta
        table.insert(respostas_usuario, {
            pergunta = pergunta.questao,
            resposta = resposta,
            correta = correta,
            resposta_certa = pergunta.resposta_correta,
            explicacao = pergunta.explicacao
        })
        
        if correta then
            pontuacao = pontuacao + 10
            print()
            print("✅ CORRETO! Parabéns!")
        else
            print()
            print("❌ INCORRETO!")
            print(string.format("   A resposta correta era: %s", pergunta.resposta_correta))
        end
        
        print()
        print("💡 EXPLICAÇÃO:")
        print("   " .. pergunta.explicacao)
        
        if i < total_perguntas then
            print()
            io.write("Pressione ENTER para a próxima pergunta...")
            io.read()
        end
    end
    
    -- Resultado final
    print("\n" .. string.rep("═", 60))
    print("           🏆 RESULTADO FINAL")
    print(string.rep("═", 60))
    print()
    print(string.format("   📊 Pontuação: %d de %d pontos", pontuacao, total_perguntas * 10))
    
    local percentual = (pontuacao / (total_perguntas * 10)) * 100
    print(string.format("   📈 Aproveitamento: %.1f%%", percentual))
    print()
    
    -- Classificação
    if percentual == 100 then
        print("   🏆 PERFEITO! Você é um mestre em Lua!")
    elseif percentual >= 80 then
        print("   ⭐ EXCELENTE! Você domina Lua muito bem!")
    elseif percentual >= 60 then
        print("   ✅ BOM! Continue estudando!")
    elseif percentual >= 40 then
        print("   📚 REGULAR. Revise os conceitos básicos.")
    else
        print("   📖 Continue praticando! Estude mais sobre Lua.")
    end
    
    print()
    print("   Acertos:", pontuacao / 10, "de", total_perguntas)
    print("   Erros:", total_perguntas - (pontuacao / 10))
    print(string.rep("═", 60))
    
    return respostas_usuario, pontuacao, percentual
end

-- Revisar respostas
local function revisar_respostas(respostas)
    print("\n📝 REVISÃO DAS RESPOSTAS")
    print("════════════════════════════════════════════════════════════")
    
    for i, resposta in ipairs(respostas) do
        print(string.format("\n%d. %s", i, resposta.pergunta))
        print(string.format("   Sua resposta: %s %s", 
            resposta.resposta, 
            resposta.correta and "✅" or "❌"))
        
        if not resposta.correta then
            print(string.format("   Resposta correta: %s", resposta.resposta_certa))
        end
        
        print("   💡 " .. resposta.explicacao)
    end
    
    print("\n════════════════════════════════════════════════════════════")
end

-- Menu principal
local function menu_principal()
    local historico = {}
    
    while true do
        print("\n")
        print("╔════════════════════════════════════════════════════════════╗")
        print("║           🧠 QUIZ INTERATIVO LUA                           ║")
        print("╚════════════════════════════════════════════════════════════╝")
        print()
        print("   [1] 🎮 Começar Quiz")
        print("   [2] 📖 Sobre o Quiz")
        print("   [3] 📊 Ver Histórico")
        print("   [0] 🚪 Sair")
        print()
        io.write("➜ Escolha uma opção: ")
        local opcao = io.read()
        
        if opcao == "0" then
            print("\n👋 Até logo! Continue estudando Lua!\n")
            break
        elseif opcao == "1" then
            local respostas, pontos, percentual = executar_quiz()
            
            -- Salvar no histórico
            table.insert(historico, {
                data = os.date("%d/%m/%Y %H:%M"),
                pontos = pontos,
                percentual = percentual
            })
            
            print()
            io.write("📝 Deseja revisar suas respostas? (s/n): ")
            local revisar = io.read():lower()
            
            if revisar == "s" or revisar == "sim" then
                revisar_respostas(respostas)
            end
            
            print()
            io.write("Pressione ENTER para voltar ao menu...")
            io.read()
        elseif opcao == "2" then
            print("\n📖 SOBRE O QUIZ")
            print("─────────────────────────────────────────────────────────")
            print("   Este quiz testa seus conhecimentos sobre:")
            print("   • Sintaxe básica de Lua")
            print("   • Estruturas de dados (Tables)")
            print("   • Operadores e funções")
            print("   • Boas práticas")
            print()
            print("   As perguntas são embaralhadas a cada vez!")
            print("─────────────────────────────────────────────────────────")
            print()
            io.write("Pressione ENTER para voltar...")
            io.read()
        elseif opcao == "3" then
            print("\n📊 HISTÓRICO DE TENTATIVAS")
            print("════════════════════════════════════════════════════════════")
            
            if #historico == 0 then
                print("   (Nenhuma tentativa ainda)")
            else
                for i, tentativa in ipairs(historico) do
                    print(string.format("   %d. %s - %d pontos (%.1f%%)", 
                        i, tentativa.data, tentativa.pontos, tentativa.percentual))
                end
            end
            
            print("════════════════════════════════════════════════════════════")
            print()
            io.write("Pressione ENTER para voltar...")
            io.read()
        else
            print("❌ Opção inválida!")
        end
    end
end

-- Inicializar
math.randomseed(os.time())

print("╔════════════════════════════════════════════════════════════╗")
print("║     BEM-VINDO AO QUIZ INTERATIVO LUA!                      ║")
print("║                                                            ║")
print("║  Teste seus conhecimentos sobre a linguagem Lua!          ║")
print("║  Responda perguntas de múltipla escolha e veja seu        ║")
print("║  desempenho!                                               ║")
print("╚════════════════════════════════════════════════════════════╝\n")

io.write("Pressione ENTER para começar...")
io.read()

menu_principal()
