--[[
    🌙 MENU PRINCIPAL - PROJETO LUA INTERATIVO
    
    Este é o ponto de entrada do projeto de aprendizado de Lua.
    Aqui você pode navegar por todos os módulos e projetos práticos.
    
    Autor: Jhonnatan Luiz
    Data: Outubro 2025
]]

-- Limpar o console (funciona em Windows, Linux e Mac)
local function limparTela()
    os.execute("cls || clear")
end

-- Pausar e aguardar o usuário pressionar Enter
local function pausar()
    print("\n🔹 Pressione Enter para continuar...")
    io.read()
end

-- Banner de boas-vindas
local function exibirBanner()
    limparTela()
    print("╔═══════════════════════════════════════════════════════════╗")
    print("║                                                           ║")
    print("║     🌙  PROJETO LUA INTERATIVO PARA INICIANTES  🌙       ║")
    print("║                                                           ║")
    print("║     Aprenda Lua de forma prática e divertida!            ║")
    print("║                                                           ║")
    print("╚═══════════════════════════════════════════════════════════╝")
    print()
end

-- Menu de lições básicas
local function menuBasico()
    while true do
        limparTela()
        print("═══════════════════════════════════════════")
        print("   📚 LIÇÕES BÁSICAS")
        print("═══════════════════════════════════════════")
        print()
        print("  [1] 🔤 Variáveis e Tipos de Dados")
        print("  [2] ➕ Operadores Matemáticos e Lógicos")
        print("  [3] 📝 Manipulação de Strings")
        print("  [0] ⬅️  Voltar ao Menu Principal")
        print()
        io.write("👉 Escolha uma opção: ")
        
        local opcao = io.read()
        
        if opcao == "1" then
            dofile("01_basico/variaveis.lua")
            pausar()
        elseif opcao == "2" then
            dofile("01_basico/operadores.lua")
            pausar()
        elseif opcao == "3" then
            dofile("01_basico/strings.lua")
            pausar()
        elseif opcao == "0" then
            break
        else
            print("\n❌ Opção inválida! Tente novamente.")
            pausar()
        end
    end
end

-- Menu de controle de fluxo
local function menuControle()
    while true do
        limparTela()
        print("═══════════════════════════════════════════")
        print("   🔀 CONTROLE DE FLUXO")
        print("═══════════════════════════════════════════")
        print()
        print("  [1] 🔀 Condicionais (if, else, elseif)")
        print("  [2] 🔁 Loops (for, while, repeat)")
        print("  [3] ⚙️  Funções")
        print("  [0] ⬅️  Voltar ao Menu Principal")
        print()
        io.write("👉 Escolha uma opção: ")
        
        local opcao = io.read()
        
        if opcao == "1" then
            dofile("02_controle/condicionais.lua")
            pausar()
        elseif opcao == "2" then
            dofile("02_controle/loops.lua")
            pausar()
        elseif opcao == "3" then
            dofile("02_controle/funcoes.lua")
            pausar()
        elseif opcao == "0" then
            break
        else
            print("\n❌ Opção inválida! Tente novamente.")
            pausar()
        end
    end
end

-- Menu de estruturas de dados
local function menuEstruturas()
    while true do
        limparTela()
        print("═══════════════════════════════════════════")
        print("   📊 ESTRUTURAS DE DADOS")
        print("═══════════════════════════════════════════")
        print()
        print("  [1] 📋 Tables (Arrays e Dicionários)")
        print("  [2] 🎭 Metatables e Metamétodos")
        print("  [3] 📦 Módulos")
        print("  [0] ⬅️  Voltar ao Menu Principal")
        print()
        io.write("👉 Escolha uma opção: ")
        
        local opcao = io.read()
        
        if opcao == "1" then
            dofile("03_estruturas/tables.lua")
            pausar()
        elseif opcao == "2" then
            dofile("03_estruturas/metatables.lua")
            pausar()
        elseif opcao == "3" then
            dofile("03_estruturas/modulos.lua")
            pausar()
        elseif opcao == "0" then
            break
        else
            print("\n❌ Opção inválida! Tente novamente.")
            pausar()
        end
    end
end

-- Menu de projetos práticos
local function menuProjetos()
    while true do
        limparTela()
        print("═══════════════════════════════════════════")
        print("   🎮 PROJETOS PRÁTICOS")
        print("═══════════════════════════════════════════")
        print()
        print("  [1] 🧮 Calculadora Interativa")
        print("  [2] 🎲 Jogo de Adivinhação")
        print("  [3] ✅ Lista de Tarefas (To-Do List)")
        print("  [4] 📝 Quiz de Conhecimentos")
        print("  [0] ⬅️  Voltar ao Menu Principal")
        print()
        io.write("👉 Escolha uma opção: ")
        
        local opcao = io.read()
        
        if opcao == "1" then
            dofile("04_projetos/calculadora.lua")
            pausar()
        elseif opcao == "2" then
            dofile("04_projetos/jogo_adivinhacao.lua")
            pausar()
        elseif opcao == "3" then
            dofile("04_projetos/todo_list.lua")
            pausar()
        elseif opcao == "4" then
            dofile("04_projetos/quiz.lua")
            pausar()
        elseif opcao == "0" then
            break
        else
            print("\n❌ Opção inválida! Tente novamente.")
            pausar()
        end
    end
end

-- Menu principal
local function menuPrincipal()
    while true do
        exibirBanner()
        print("═══════════════════════════════════════════")
        print("   🎯 MENU PRINCIPAL")
        print("═══════════════════════════════════════════")
        print()
        print("  [1] 📚 Lições Básicas")
        print("  [2] 🔀 Controle de Fluxo")
        print("  [3] 📊 Estruturas de Dados")
        print("  [4] 🎮 Projetos Práticos")
        print("  [5] ℹ️  Sobre o Projeto")
        print("  [0] 🚪 Sair")
        print()
        io.write("👉 Escolha uma opção: ")
        
        local opcao = io.read()
        
        if opcao == "1" then
            menuBasico()
        elseif opcao == "2" then
            menuControle()
        elseif opcao == "3" then
            menuEstruturas()
        elseif opcao == "4" then
            menuProjetos()
        elseif opcao == "5" then
            limparTela()
            print("═══════════════════════════════════════════")
            print("   ℹ️  SOBRE O PROJETO")
            print("═══════════════════════════════════════════")
            print()
            print("🌙 Projeto Lua Interativo para Iniciantes")
            print()
            print("📌 Objetivo:")
            print("   Ensinar Lua de forma prática e interativa")
            print()
            print("👨‍💻 Autor: Jhonnatan Luiz")
            print("📅 Data: Outubro 2025")
            print("🔖 Versão: 1.0")
            print()
            print("📚 Recursos:")
            print("   • Lições passo a passo")
            print("   • Exemplos práticos")
            print("   • Projetos completos")
            print("   • Exercícios interativos")
            print()
            print("🔗 Documentação: https://www.lua.org/manual/5.4/")
            pausar()
        elseif opcao == "0" then
            limparTela()
            print("\n👋 Obrigado por usar o Projeto Lua Interativo!")
            print("🌙 Continue praticando e boa sorte nos estudos!\n")
            break
        else
            print("\n❌ Opção inválida! Tente novamente.")
            pausar()
        end
    end
end

-- Iniciar o programa
print("🚀 Iniciando Projeto Lua Interativo...")
print("⏳ Carregando módulos...")
os.execute("sleep 1 || timeout /t 1 > nul")

menuPrincipal()
