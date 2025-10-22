# 🌙 Projeto Lua Interativo para Iniciantes

Bem-vindo ao seu primeiro projeto em Lua! Este é um guia completo e interativo para aprender a linguagem Lua do zero.

## 📚 O que é Lua?

Lua é uma linguagem de programação leve, rápida e poderosa, muito usada em:
- 🎮 Desenvolvimento de jogos (Roblox, World of Warcraft, Angry Birds)
- 🔧 Scripts de configuração (Nginx, Redis)
- 📱 Aplicativos móveis (Corona SDK)
- 🤖 Sistemas embarcados

## 🚀 Como Instalar Lua

### Windows:
1. **Via Chocolatey** (requer admin):
   ```powershell
   choco install lua -y
   ```

2. **Download direto**:
   - Baixe de: https://github.com/rjpcomputing/luaforwindows/releases
   - Ou use: https://luabinaries.sourceforge.net/

3. **Teste a instalação**:
   ```powershell
   lua -v
   ```

### Online (sem instalação):
- https://www.lua.org/demo.html
- https://onecompiler.com/lua
- https://repl.it/languages/lua

## 📂 Estrutura do Projeto

```
Projeto_1/
├── README.md                    # Este arquivo
├── main.lua                     # Menu principal interativo
├── 01_basico/
│   ├── variaveis.lua           # Tipos de dados e variáveis
│   ├── operadores.lua          # Operadores matemáticos e lógicos
│   └── strings.lua             # Manipulação de strings
├── 02_controle/
│   ├── condicionais.lua        # if, else, elseif
│   ├── loops.lua               # for, while, repeat
│   └── funcoes.lua             # Definição e uso de funções
├── 03_estruturas/
│   ├── tables.lua              # Tables (arrays e dicionários)
│   ├── metatables.lua          # Metatabelas e metamétodos
│   └── modulos.lua             # Criação de módulos
├── 04_projetos/
│   ├── calculadora.lua         # Calculadora interativa
│   ├── jogo_adivinhacao.lua    # Jogo de adivinhação
│   ├── todo_list.lua           # Lista de tarefas
│   └── quiz.lua                # Quiz de conhecimentos
└── utils/
    ├── helpers.lua             # Funções auxiliares
    └── colors.lua              # Cores no terminal
```

## 🎮 Como Executar

### ⚡ Opção 1: Atalho Rápido (MAIS FÁCIL!)
Dê **duplo clique** no arquivo `EXECUTAR.bat`

### 💻 Opção 2: Via PowerShell
1. **Abra o PowerShell**
2. **Navegue até a pasta**:
   ```powershell
   cd "c:\Users\Johnnie Desktop\OneDrive\Documents\GitHub\Aulas IA\Lua\Projeto_1"
   ```
3. **Configure UTF-8 para emojis**:
   ```powershell
   chcp 65001
   [Console]::OutputEncoding = [System.Text.Encoding]::UTF8
   ```
4. **Execute o menu principal**:
   ```powershell
   J:\Programas\lua-5.4.2_Win64_bin\lua54.exe .\main.lua
   ```

### 📜 Opção 3: Script PowerShell
```powershell
.\EXECUTAR.ps1
```

## 📖 Roteiro de Estudos

### Semana 1: Fundamentos
- ✅ Variáveis e tipos de dados
- ✅ Operadores
- ✅ Strings e concatenação

### Semana 2: Controle de Fluxo
- ✅ Condicionais (if/else)
- ✅ Loops (for/while)
- ✅ Funções

### Semana 3: Estruturas de Dados
- ✅ Tables (arrays)
- ✅ Tables (dicionários)
- ✅ Metatabelas

### Semana 4: Projetos Práticos
- ✅ Calculadora
- ✅ Jogo de adivinhação
- ✅ To-Do List
- ✅ Quiz interativo

## 🎯 Objetivos de Aprendizado

Ao completar este projeto, você será capaz de:
- ✅ Entender a sintaxe básica de Lua
- ✅ Trabalhar com variáveis e tipos de dados
- ✅ Usar estruturas de controle (if, loops)
- ✅ Criar e usar funções
- ✅ Manipular tables (arrays e dicionários)
- ✅ Desenvolver pequenos projetos interativos
- ✅ Ler e escrever código Lua com confiança

## 📚 Recursos Adicionais

- **Documentação Oficial**: https://www.lua.org/manual/5.4/
- **Tutorial Interativo**: https://www.luatut.com/
- **Livro Gratuito**: "Programming in Lua" - https://www.lua.org/pil/
- **Comunidade**: https://www.reddit.com/r/lua/

## 🤝 Contribuindo

Este é um projeto de estudos! Sinta-se livre para:
- Adicionar novos exercícios
- Melhorar explicações
- Criar novos projetos práticos

## 📝 Notas

- Lua usa índices começando em **1** (não 0 como em outras linguagens)
- Lua é **case-sensitive** (`Var` ≠ `var`)
- Comentários em Lua: `--` (linha) ou `--[[ ]]` (bloco)

---

**Autor**: Jhonnatan Luiz  
**Data**: Outubro 2025  
**Versão**: 1.0
