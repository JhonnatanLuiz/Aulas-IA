"""
1- Operações matemáticas simples

Crie duas variáveis x e y com valores inteiros.

Mostre a soma, subtração, multiplicação, divisão e o resto da divisão entre elas.
"""
x = 10
y = 5

print("Soma:", x + y)
print("Subtração:", x - y)
print("Multiplicação:", x * y)
print("Divisão:", x / y)
print("Resto da Divisão:", x % y)

'''
2-Conversão de tipos

Crie uma variável idade como número inteiro.

Mostre a idade dentro de uma frase usando f-string.

Depois, converta essa idade para string com str() e mostre novamente concatenando.

'''

idade = 30
print(f"Minha idade é {idade} anos.")
print("Minha idade é " + str(idade) + " anos.")

'''
3- Manipulação de strings

Crie duas variáveis: nome e sobrenome.

Junte as duas em nome_completo.

Mostre o nome completo em:

letras maiúsculas (upper())

letras minúsculas (lower())

apenas a primeira letra maiúscula (title()).
'''

nome = "Jhonnatan"
sobrenome = "Luiz"
nome_completo = nome + " " + sobrenome

print("Nome completo:", nome_completo)
print("Maiúsculas:", nome_completo.upper())
print("Minúsculas:", nome_completo.lower())
print("Título:", nome_completo.title())

'''
4- Calculadora de IMC

Crie variáveis para peso (float, em kg) e altura (float, em metros).

Calcule o IMC usando a fórmula:
 IMC = peso / (altura ** 2)

Mostre o resultado dentro de uma frase usando f-string.

'''
peso = 85.0
altura = 1.75

# Validação básica para evitar divisão por zero
if altura <= 0:
    print("Altura inválida. Deve ser maior que zero.")
else:
    imc = peso / (altura ** 2)
    print(f"O IMC é {imc:.2f}")

    # Classificação simples do IMC (padrão OMS)
    if imc < 18.5:
        classificacao = "Abaixo do peso"
    elif imc < 25:
        classificacao = "Peso normal"
    elif imc < 30:
        classificacao = "Sobrepeso"
    else:
        classificacao = "Obesidade"

    print(f"Classificação: {classificacao}")

# Dicas (comentadas para não atrapalhar execução)
# - Sempre valide altura > 0 antes de dividir.
# - Ao ler do usuário, converta com float() e trate ValueError.
# - Use f-strings e formatos ({imc:.2f}) para saída legível.
# Exemplo interativo (descomente se quiser usar):
# try:
#     peso = float(input("Peso (kg): ").strip())
#     altura = float(input("Altura (m): ").strip())
#     if altura <= 0:
#         raise ValueError("Altura deve ser maior que zero.")
#     imc = peso / (altura ** 2)
#     print(f"O IMC é {imc:.2f}")
# except ValueError:
#     print("Entrada inválida. Informe números válidos para peso e altura.")

# Desafio nivel médio 4 - PYTHON (Para comparação com JavaScript)

# ========================================
# FIZZBUZZ SIMPLES (Similar ao JavaScript)
# ========================================
print("=== FizzBuzz Simples (1 a 50) ===")

# Loop de 1 até 50 (range(1, 51) gera números de 1 até 50)
for i in range(1, 51):  # Inicia em 1 e vai até 50 (51 é exclusivo)
    if i % 3 == 0 and i % 5 == 0:  # Verifica se é múltiplo de 3 E de 5 (múltiplo de 15)
        print("FizzBuzz")  # Imprime "FizzBuzz" se for múltiplo de ambos
    elif i % 3 == 0:  # Verifica se é múltiplo apenas de 3
        print("Fizz")  # Imprime "Fizz" se for múltiplo de 3
    elif i % 5 == 0:  # Verifica se é múltiplo apenas de 5
        print("Buzz")  # Imprime "Buzz" se for múltiplo de 5
    else:  # Se não for múltiplo de 3 nem de 5
        print(i)  # Imprime o número original

print("\n")  # Linha em branco para separar

# ========================================
# COMPARAÇÃO: PYTHON vs JAVASCRIPT
# ========================================
"""
PYTHON:
for i in range(1, 51):              # range(1, 51) gera números de 1 até 50
    if i % 3 == 0 and i % 5 == 0:   # Usa 'and' e '==' (comparação)
        print("FizzBuzz")             # print() para exibir
    elif i % 3 == 0:                  # elif para condições adicionais
        print("Fizz")
    elif i % 5 == 0:
        print("Buzz")
    else:                             # else sem parênteses
        print(i)

JAVASCRIPT:
for (let i = 1; i <= 50; i++) {     // Loop for com inicialização, condição e incremento
    if (i % 3 === 0 && i % 5 === 0) { // Usa '&&' e '===' (comparação estrita)
        console.log("FizzBuzz");      // console.log() para exibir
    } else if (i % 3 === 0) {         // else if (separado) para condições adicionais
        console.log("Fizz");
    } else if (i % 5 === 0) {
        console.log("Buzz");
    } else {                          // else com chaves {}
        console.log(i);
    }
}

DIFERENÇAS PRINCIPAIS:
1. Python: range(1, 51) | JavaScript: for(let i = 1; i <= 50; i++)
2. Python: and | JavaScript: &&
3. Python: == | JavaScript: === (recomendado para evitar coerção de tipos)
4. Python: print() | JavaScript: console.log()
5. Python: elif | JavaScript: else if
6. Python: indentação (4 espaços) | JavaScript: chaves {}
7. Python: sem ponto e vírgula | JavaScript: ponto e vírgula opcional (boa prática usar)
8. Python: # para comentários | JavaScript: // para comentários de linha
"""

# ========================================
# FIZZBUZZ COM FUNÇÃO E LIST COMPREHENSION (Versão Funcional)
# ========================================
print("=== FizzBuzz com List (Versão Funcional) ===")

# Função que recebe uma lista de números e retorna uma nova lista substituindo os números conforme as regras do FizzBuzz

def fizz_buzz(numeros):  # Recebe uma lista de números como parâmetro
    """
    Aplica as regras do FizzBuzz a cada número da lista.
    Retorna uma nova lista com as transformações.
    """
    # Cria uma nova lista vazia para armazenar os resultados
    resultado = []
    
    for num in numeros:  # Itera sobre cada número da lista
        if num % 3 == 0 and num % 5 == 0:  # Verifica se é múltiplo de 3 E de 5
            resultado.append("FizzBuzz")  # Adiciona "FizzBuzz" se for múltiplo de 3 e 5
        elif num % 3 == 0:  # Verifica se é múltiplo de 3
            resultado.append("Fizz")  # Adiciona "Fizz" se for múltiplo de 3
        elif num % 5 == 0:  # Verifica se é múltiplo de 5
            resultado.append("Buzz")  # Adiciona "Buzz" se for múltiplo de 5
        else:  # Caso contrário (não é múltiplo nem de 3 nem de 5)
            resultado.append(num)  # Adiciona o número original sem modificação
    
    return resultado  # Retorna a nova lista com os valores transformados

print(fizz_buzz([1, 3, 5, 15, 22, 30, 33, 50, 52]))  # Exemplo de uso: [1, 'Fizz', 'Buzz', 'FizzBuzz', 22, 'FizzBuzz', 'Fizz', 'Buzz', 52]

# ALTERNATIVA: Usando List Comprehension (mais pythônico)
def fizz_buzz_comprehension(numeros):  # Versão mais compacta usando list comprehension
    """
    Mesma lógica do FizzBuzz usando list comprehension.
    Mais conciso e idiomático em Python.
    """
    return [
        "FizzBuzz" if num % 3 == 0 and num % 5 == 0  # Se múltiplo de 3 e 5
        else "Fizz" if num % 3 == 0  # Se múltiplo de 3
        else "Buzz" if num % 5 == 0  # Se múltiplo de 5
        else num  # Caso contrário, o número original
        for num in numeros  # Para cada número na lista
    ]

print(fizz_buzz_comprehension([1, 3, 5, 15, 22, 30, 33, 50, 52]))  # Mesmo resultado

print("\n")

# ========================================
# FUNÇÃO CONTAR FREQUÊNCIA (Lista de Elementos)
# ========================================

def contar_frequencia(arr):  # Recebe uma lista de elementos (strings, números, etc)
    """
    Conta a frequência de cada elemento na lista.
    Retorna um dicionário com os elementos e suas contagens.
    """
    frequencias = {}  # Cria um dicionário vazio para armazenar as contagens
    
    for item in arr:  # Itera sobre cada elemento da lista
        # Se frequencias.get(item) ainda não existe, retorna 0
        # Então começamos a contagem do zero e somamos 1
        frequencias[item] = frequencias.get(item, 0) + 1  # Incrementa a contagem do item
    
    return frequencias  # Retorna o dicionário com todas as frequências contadas

print(contar_frequencia(['maçã', 'banana', 'maçã', 'laranja', 'banana', 'maçã']))  # Exemplo: {'maçã': 3, 'banana': 2, 'laranja': 1}

# ALTERNATIVA: Usando Counter do módulo collections (mais pythônico)
from collections import Counter

def contar_frequencia_counter(arr):  # Versão usando Counter (recomendada)
    """
    Usa Counter para contar frequências de forma mais eficiente.
    Counter é otimizado e faz parte da biblioteca padrão do Python.
    """
    return dict(Counter(arr))  # Counter retorna um objeto especial, convertemos para dict

print(contar_frequencia_counter(['maçã', 'banana', 'maçã', 'laranja', 'banana', 'maçã']))  # Mesmo resultado

# ========================================
# OBSERVAÇÕES FINAIS
# ========================================
"""
SEMELHANÇAS entre Python e JavaScript:
✅ Ambos usam if/else para controle de fluxo
✅ Ambos usam loops (for) para iteração
✅ Ambos usam operador % (módulo) para verificar divisibilidade
✅ Ambos suportam funções e retorno de valores
✅ Ambos trabalham com estruturas de dados (listas/arrays, dicionários/objetos)

DIFERENÇAS principais:
❌ Python usa indentação obrigatória, JavaScript usa chaves {}
❌ Python: and/or/not | JavaScript: &&/||/!
❌ Python: == e != | JavaScript: === e !== (comparação estrita)
❌ Python: print() | JavaScript: console.log()
❌ Python: range() | JavaScript: loop for tradicional
❌ Python: elif | JavaScript: else if
❌ Python: dicionários {} | JavaScript: objetos {}
❌ Python: .append() | JavaScript: .push()
❌ Python: list comprehension | JavaScript: .map(), .filter(), etc.

QUAL USAR?
- Python: Mais legível, ótimo para iniciantes, ciência de dados, automação
- JavaScript: Essencial para web (frontend e backend com Node.js)
"""

#Diferença principais entre Python e JavaScript em estruturas de controle, sintaxe e bibliotecas padrão.
#Python é uma linguagem tipada dinamicamente, interpretada e de alto nível, conhecida por sua legibilidade e simplicidade.
#JavaScript é uma linguagem de programação leve, interpretada ou compilada just-in-time, amplamente utilizada para desenvolvimento web.
