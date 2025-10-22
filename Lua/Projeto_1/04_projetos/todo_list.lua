--[[
    ✅ PROJETO 3: LISTA DE TAREFAS (TODO LIST)
    
    Gerencie suas tarefas com este sistema completo!
    Adicione, remova, marque como concluídas e visualize.
]]

-- Estado da aplicação
local tarefas = {}
local proximo_id = 1

-- Adicionar tarefa
local function adicionar_tarefa(descricao)
    local tarefa = {
        id = proximo_id,
        descricao = descricao,
        concluida = false,
        criada_em = os.date("%d/%m/%Y %H:%M")
    }
    
    table.insert(tarefas, tarefa)
    proximo_id = proximo_id + 1
    
    print(string.format("✅ Tarefa #%d adicionada com sucesso!", tarefa.id))
end

-- Listar tarefas
local function listar_tarefas(filtro)
    print("\n📋 LISTA DE TAREFAS")
    print("════════════════════════════════════════════════════════════")
    
    local contador = 0
    
    for _, tarefa in ipairs(tarefas) do
        local mostrar = true
        
        if filtro == "pendentes" and tarefa.concluida then
            mostrar = false
        elseif filtro == "concluidas" and not tarefa.concluida then
            mostrar = false
        end
        
        if mostrar then
            contador = contador + 1
            local status = tarefa.concluida and "✅" or "⬜"
            local texto = tarefa.concluida and string.format("~~%s~~", tarefa.descricao) or tarefa.descricao
            
            print(string.format("   %s [%d] %s", status, tarefa.id, texto))
            print(string.format("       📅 Criada em: %s", tarefa.criada_em))
            
            if tarefa.concluida and tarefa.concluida_em then
                print(string.format("       ✅ Concluída em: %s", tarefa.concluida_em))
            end
            print()
        end
    end
    
    if contador == 0 then
        if filtro == "pendentes" then
            print("   🎉 Nenhuma tarefa pendente!")
        elseif filtro == "concluidas" then
            print("   📭 Nenhuma tarefa concluída ainda.")
        else
            print("   📭 Nenhuma tarefa cadastrada.")
        end
    else
        print(string.format("   📊 Total: %d tarefa(s)", contador))
    end
    
    print("════════════════════════════════════════════════════════════")
end

-- Marcar tarefa como concluída
local function concluir_tarefa(id)
    for _, tarefa in ipairs(tarefas) do
        if tarefa.id == id then
            if tarefa.concluida then
                print("⚠️  Esta tarefa já está concluída!")
            else
                tarefa.concluida = true
                tarefa.concluida_em = os.date("%d/%m/%Y %H:%M")
                print(string.format("✅ Tarefa #%d marcada como concluída!", id))
            end
            return
        end
    end
    
    print(string.format("❌ Tarefa #%d não encontrada!", id))
end

-- Remover tarefa
local function remover_tarefa(id)
    for i, tarefa in ipairs(tarefas) do
        if tarefa.id == id then
            table.remove(tarefas, i)
            print(string.format("🗑️  Tarefa #%d removida!", id))
            return
        end
    end
    
    print(string.format("❌ Tarefa #%d não encontrada!", id))
end

-- Estatísticas
local function mostrar_estatisticas()
    local total = #tarefas
    local concluidas = 0
    
    for _, tarefa in ipairs(tarefas) do
        if tarefa.concluida then
            concluidas = concluidas + 1
        end
    end
    
    local pendentes = total - concluidas
    local percentual = total > 0 and (concluidas / total * 100) or 0
    
    print("\n📊 ESTATÍSTICAS")
    print("════════════════════════════════════════════════════════════")
    print(string.format("   📝 Total de tarefas: %d", total))
    print(string.format("   ✅ Concluídas: %d", concluidas))
    print(string.format("   ⬜ Pendentes: %d", pendentes))
    print(string.format("   📈 Progresso: %.1f%%", percentual))
    print("════════════════════════════════════════════════════════════")
end

-- Menu principal
local function menu_principal()
    while true do
        print("\n")
        print("╔════════════════════════════════════════════════════════════╗")
        print("║           ✅ GERENCIADOR DE TAREFAS                        ║")
        print("╚════════════════════════════════════════════════════════════╝")
        print()
        print("   [1] ➕ Adicionar Tarefa")
        print("   [2] 📋 Listar Todas as Tarefas")
        print("   [3] ⬜ Listar Tarefas Pendentes")
        print("   [4] ✅ Listar Tarefas Concluídas")
        print("   [5] ✔️  Marcar Tarefa como Concluída")
        print("   [6] 🗑️  Remover Tarefa")
        print("   [7] 📊 Ver Estatísticas")
        print("   [0] 🚪 Sair")
        print()
        io.write("➜ Escolha uma opção: ")
        local opcao = io.read()
        
        if opcao == "0" then
            print("\n👋 Até logo!\n")
            break
        elseif opcao == "1" then
            print()
            io.write("📝 Digite a descrição da tarefa: ")
            local descricao = io.read()
            
            if descricao and descricao ~= "" then
                adicionar_tarefa(descricao)
            else
                print("❌ Descrição inválida!")
            end
        elseif opcao == "2" then
            listar_tarefas("todas")
        elseif opcao == "3" then
            listar_tarefas("pendentes")
        elseif opcao == "4" then
            listar_tarefas("concluidas")
        elseif opcao == "5" then
            listar_tarefas("pendentes")
            print()
            io.write("Digite o ID da tarefa: ")
            local id = tonumber(io.read())
            
            if id then
                concluir_tarefa(id)
            else
                print("❌ ID inválido!")
            end
        elseif opcao == "6" then
            listar_tarefas("todas")
            print()
            io.write("Digite o ID da tarefa: ")
            local id = tonumber(io.read())
            
            if id then
                io.write("⚠️  Tem certeza? (s/n): ")
                local confirma = io.read():lower()
                
                if confirma == "s" or confirma == "sim" then
                    remover_tarefa(id)
                else
                    print("❌ Operação cancelada!")
                end
            else
                print("❌ ID inválido!")
            end
        elseif opcao == "7" then
            mostrar_estatisticas()
        else
            print("❌ Opção inválida!")
        end
        
        print()
        io.write("Pressione ENTER para continuar...")
        io.read()
    end
end

-- Iniciar aplicação
print("╔════════════════════════════════════════════════════════════╗")
print("║     BEM-VINDO AO GERENCIADOR DE TAREFAS!                   ║")
print("║                                                            ║")
print("║  Organize suas tarefas de forma simples e eficiente!      ║")
print("║  Adicione, marque como concluída e acompanhe seu          ║")
print("║  progresso!                                                ║")
print("╚════════════════════════════════════════════════════════════╝\n")

io.write("Pressione ENTER para começar...")
io.read()

menu_principal()
