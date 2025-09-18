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
