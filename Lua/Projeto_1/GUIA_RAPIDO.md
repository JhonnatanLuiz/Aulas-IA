# ⚡ GUIA RÁPIDO DE USO

## 🚀 FORMA MAIS FÁCIL DE EXECUTAR

### Windows (Duplo Clique)
1. Dê **duplo clique** em `EXECUTAR.bat`
2. Pronto! O menu aparecerá automaticamente

---

## 💻 EXECUTAR VIA POWERSHELL

### Passo a Passo:

1. **Abra o PowerShell** na pasta do projeto
   - Pressione `Shift + Botão Direito` na pasta
   - Clique em "Abrir janela do PowerShell aqui"

2. **Configure UTF-8** (para emojis funcionarem):
   ```powershell
   chcp 65001
   [Console]::OutputEncoding = [System.Text.Encoding]::UTF8
   ```

3. **Execute o projeto**:
   ```powershell
   J:\Programas\lua-5.4.2_Win64_bin\lua54.exe .\main.lua
   ```

---

## 📁 EXECUTAR LIÇÕES INDIVIDUAIS

### Menu Principal
```powershell
J:\Programas\lua-5.4.2_Win64_bin\lua54.exe .\main.lua
```

### Lições Básicas
```powershell
J:\Programas\lua-5.4.2_Win64_bin\lua54.exe .\01_basico\variaveis.lua
J:\Programas\lua-5.4.2_Win64_bin\lua54.exe .\01_basico\operadores.lua
J:\Programas\lua-5.4.2_Win64_bin\lua54.exe .\01_basico\strings.lua
```

### Controle de Fluxo
```powershell
J:\Programas\lua-5.4.2_Win64_bin\lua54.exe .\02_controle\condicionais.lua
J:\Programas\lua-5.4.2_Win64_bin\lua54.exe .\02_controle\loops.lua
J:\Programas\lua-5.4.2_Win64_bin\lua54.exe .\02_controle\funcoes.lua
```

### Estruturas de Dados
```powershell
J:\Programas\lua-5.4.2_Win64_bin\lua54.exe .\03_estruturas\tables.lua
J:\Programas\lua-5.4.2_Win64_bin\lua54.exe .\03_estruturas\metatables.lua
J:\Programas\lua-5.4.2_Win64_bin\lua54.exe .\03_estruturas\modulos.lua
```

### Projetos Práticos
```powershell
J:\Programas\lua-5.4.2_Win64_bin\lua54.exe .\04_projetos\calculadora.lua
J:\Programas\lua-5.4.2_Win64_bin\lua54.exe .\04_projetos\jogo_adivinhacao.lua
J:\Programas\lua-5.4.2_Win64_bin\lua54.exe .\04_projetos\todo_list.lua
J:\Programas\lua-5.4.2_Win64_bin\lua54.exe .\04_projetos\quiz.lua
```

---

## ⚙️ CRIAR ALIAS (FACILITAR USO)

Se quiser digitar apenas `lua54` ao invés do caminho completo:

### PowerShell (Temporário - só na sessão atual)
```powershell
$env:Path += ";J:\Programas\lua-5.4.2_Win64_bin"
```

### PowerShell (Permanente)
```powershell
[Environment]::SetEnvironmentVariable("Path", $env:Path + ";J:\Programas\lua-5.4.2_Win64_bin", [EnvironmentVariableTarget]::User)
```

Depois, basta usar:
```powershell
lua54 .\main.lua
```

---

## 🎯 ORDEM DE ESTUDO RECOMENDADA

1. **Comece pelo menu principal**: `EXECUTAR.bat`
2. **Siga a ordem dos módulos**:
   - 📚 Lições Básicas (1-3)
   - 🔀 Controle de Fluxo (4-6)
   - 📊 Estruturas de Dados (7-9)
   - 🎮 Projetos Práticos (10-13)

---

## 🐛 SOLUÇÃO DE PROBLEMAS

### Problema: Emojis aparecendo como caracteres estranhos
**Solução**: Execute antes de rodar o Lua:
```powershell
chcp 65001
[Console]::OutputEncoding = [System.Text.Encoding]::UTF8
```
Ou use o arquivo `EXECUTAR.bat` que já configura isso automaticamente!

### Problema: "lua54: cannot open main.lua"
**Solução**: Você não está na pasta correta. Navegue até:
```powershell
cd "c:\Users\Johnnie Desktop\OneDrive\Documents\GitHub\Aulas IA\Lua\Projeto_1"
```

### Problema: "lua54 is not recognized"
**Solução**: Use o caminho completo:
```powershell
J:\Programas\lua-5.4.2_Win64_bin\lua54.exe .\main.lua
```

---

## 📞 DICAS IMPORTANTES

✅ **SEMPRE** execute na pasta do projeto  
✅ Use `EXECUTAR.bat` para facilitar  
✅ Configure UTF-8 antes de executar  
✅ Faça os exercícios em cada lição  
✅ Pratique modificando os exemplos  

---

**Boa sorte nos estudos! 🌙**
