'''
1. Par ou ímpar
Peça ao usuário para digitar um número inteiro.
Verifique se ele é par ou ímpar.
Mostre uma mensagem no print().
'''



# Funções e operadores usados:
# input(prompt) -> lê texto do usuário (retorna string).
# int(s) -> converte a string s para inteiro (levanta ValueError se inválida).
# operador % -> resto da divisão inteira (ex.: 5 % 2 == 1).
# operador == -> compara igualdade (ex.: numero % 2 == 0).
# f-strings -> formatam strings com expressões: f"O número {numero}".
# print() -> imprime no console.

try:
    numero = int(input("Digite um número inteiro: "))  # lê e converte a entrada
    if numero % 2 == 0:                               # checa resto igual a zero
        print(f"O número {numero} é par.")
    else:
        print(f"O número {numero} é ímpar.")
except ValueError:
    # mensagem amigável caso o usuário não digite um inteiro válido
    print("Entrada inválida: por favor digite um número inteiro.")


'''
2. Maior de idade
Peça a idade do usuário (input).
Se for maior ou igual a 18, mostre "Você é maior de idade".
Caso contrário, mostre "Você é menor de idade".
'''

# Explicação das funções usadas neste exercício:
# - input(prompt): lê texto do usuário.
# - int(s): converte string em inteiro; envolvemos em try/except para tratar entradas inválidas.
# - operador >= : compara valores (ex.: idade >= 18).
# - print(): mostra a saída formatada para o usuário.

try:
    idade = int(input("Digite sua idade: "))
    if idade >= 18:
        print("Você é maior de idade.")
    else:
        print("Você é menor de idade.")
except ValueError:
    # trata caso o usuário digite algo que não possa ser convertido para inteiro
    print("Entrada inválida: por favor digite um número inteiro.")
    
    
'''
3. Tabuada

Peça ao usuário um número.

Mostre a tabuada desse número de 1 a 10, usando um for.
'''
try:
    # input(prompt) -> lê texto do usuário (retorna string)
    # int(s) -> converte a string s para inteiro (levanta ValueError se inválida)
    # range(1, 11) -> gera os números de 1 até 10 (11 não incluído)
    # for i in range(...): -> repete o bloco para cada valor de i
    # f-strings -> formatação embutida: f"{numero} x {i} = {numero * i}"
    # print() -> imprime cada linha da tabuada no console
    numero = int(input("Digite um número para ver a tabuada: "))
    for i in range(1, 11):
        print(f"{numero} x {i} = {numero * i}")
except ValueError:
    # trata caso o usuário digite algo que não seja um inteiro
    print("Entrada inválida: por favor digite um número inteiro.")
    
'''
4. Contagem regressiva

Use um while para fazer uma contagem regressiva de 10 até 0.

Ao final, mostre "🚀 Decolar!".
'''
contador = 10  # variável que guarda o valor atual da contagem

# while condição: repete o bloco enquanto a condição for True
# aqui: enquanto contador for maior ou igual a 0
while contador >= 0:
    # print(value) -> mostra value no console
    print(contador)
    # operador -= : decrementa o valor da variável em 1 (contador = contador - 1)
    contador -= 1

# Após o while terminar (quando contador < 0), executa o próximo print
print("🚀 Decolar!")

# Dicas opcionais:
# - Para ver a contagem com intervalo de 1 segundo, importe time e use time.sleep(1) dentro do while.
# - Cuidado: garanta que a condição possa se tornar False (aqui contador diminui), ou o loop será infinito.

'''
5. Soma de números (com explicações em comentários)
'''

soma = 0  # acumula a soma dos números digitados

# while True -> loop infinito até encontrarmos um 'break' (útil quando não sabemos quantas iterações)
while True:
    try:
        # input(prompt) -> lê texto do usuário (retorna string)
        # int(s) -> converte a string s para inteiro; se não for inteiro, levanta ValueError
        numero = int(input("Digite um número (0 para sair): "))

        # sentinel: se o usuário digitar 0, interrompemos o loop com break
        if numero == 0:
            break  # sai do while

        # operador += -> soma o valor à variável soma (soma = soma + numero)
        soma += numero

    except ValueError:
        # captura entradas inválidas (ex.: "abc") e informa o usuário sem encerrar o programa
        print("Entrada inválida: por favor digite um número inteiro.")

# f-strings -> formata a saída de forma legível: {soma} é substituído pelo valor de soma
print(f"A soma dos números digitados é: {soma}")

'''🔹 6. Jogo de Adivinhação

O computador escolhe um número aleatório de 1 a 100.

O usuário deve tentar adivinhar.

O programa deve dar dicas: “maior” ou “menor”.

Ao acertar, mostrar quantas tentativas foram usadas.

👉 Dica: use import random e random.randint(1, 100).
'''
import random  # módulo para gerar números aleatórios

# random.randint(a, b) -> inteiro aleatório entre a e b (inclusive)
numero_secreto = random.randint(1, 100)
tentativas = 0  # contador de tentativas

# Loop principal do jogo (termina com 'break')
while True:
    # input(prompt) -> lê texto; strip() remove espaços nas pontas
    s = input("Digite seu palpite (1-100) ou 'sair' para encerrar: ").strip()
    if s.lower() == 'sair':
        print("Jogo encerrado.")
        break

    # Validação: garantir que é inteiro
    try:
        palpite = int(s)  # int(s) pode levantar ValueError
    except ValueError:
        print("Entrada inválida: digite um número inteiro entre 1 e 100.")
        continue  # volta ao início do while

    # Checar intervalo permitido
    if not (1 <= palpite <= 100):
        print("Informe um número entre 1 e 100.")
        continue

    tentativas += 1  # somar 1 tentativa (operador +=)

    # Dicas e acerto
    if palpite == numero_secreto:
        print(f"Você acertou! O número era {numero_secreto}.")
        print(f"Você usou {tentativas} tentativas.")
        break  # sai do loop ao acertar
    elif palpite < numero_secreto:
        print("Maior...")  # dica: pense em um número maior
    else:
        print("Menor...")  # dica: pense em um número menor
        
    '''
    7. Calculadora Simples
    Mostre um menu com as operações: soma, subtração, multiplicação, divisão.
    O usuário escolhe a operação digitando um número.
    Depois, digita dois valores.
    O programa mostra o resultado.
    Perguntar se deseja fazer outro cálculo (se “não”, encerrar).
    '''
    
def exercicio7_calculadora():
    """
    Calculadora interativa:
    - Mostra menu de operações
    - Lê a escolha do usuário e dois números
    - Realiza a operação e pergunta se quer continuar
    """

    while True:
        # print(...) -> mostra texto no console
        print("Escolha uma operação:")
        print("1. Soma")
        print("2. Subtração")
        print("3. Multiplicação")
        print("4. Divisão")

        # input(prompt) -> lê texto do usuário (string)
        operacao = input("Digite o número da operação desejada: ").strip()

        # validação simples da opção escolhida
        if operacao not in ['1', '2', '3', '4']:
            print("Operação inválida. Tente novamente.")
            continue  # volta ao início do while

        # Lê os dois números com validação
        try:
            # float(s) -> converte string para número decimal (aceita inteiros e decimais)
            num1 = float(input("Digite o primeiro número: "))
            num2 = float(input("Digite o segundo número: "))
        except ValueError:
            # trata entradas não numéricas
            print("Entrada inválida. Por favor, digite números.")
            continue

        # Realiza a operação escolhida
        if operacao == '1':
            resultado = num1 + num2
            print(f"Resultado da soma: {resultado}")
        elif operacao == '2':
            resultado = num1 - num2
            print(f"Resultado da subtração: {resultado}")
        elif operacao == '3':
            resultado = num1 * num2
            print(f"Resultado da multiplicação: {resultado}")
        elif operacao == '4':
            # checagem para evitar divisão por zero
            if num2 == 0:
                print("Erro: Divisão por zero não é permitida.")
            else:
                resultado = num1 / num2
                print(f"Resultado da divisão: {resultado}")

        # Pergunta se deseja fazer outro cálculo
        # .strip() remove espaços; .lower() normaliza para comparação
        continuar = input("Deseja fazer outro cálculo? (sim/não): ").strip().lower()
        if continuar != 'sim':
            print("Encerrando a calculadora.")
            break  # sai do loop e encerra a função

# Chame a função quando quiser executar apenas a calculadora:
# exercicio7_calculadora()

'''
8. Gerador de Senhas

O usuário informa o tamanho da senha (número de caracteres).

O programa gera uma senha aleatória misturando letras, números e símbolos.

👉 Dica: use import string e import random com:
caracteres = string.ascii_letters + string.digits + string.punctuation
senha = "".join(random.choice(caracteres) for _ in range(tamanho))
'''

import string
import random


def exercicio8_gerador_senha():
    """Gera uma senha aleatória com letras, dígitos e símbolos.

    O usuário informa o tamanho (inteiro). Aceita 'sair' para cancelar.
    Usa string.ascii_letters, string.digits, string.punctuation e random.choice.
    """
    caracteres = string.ascii_letters + string.digits + string.punctuation
    max_len = 256

    while True:
        s = input(f"Digite o tamanho da senha (1-{max_len}) ou 'sair' para cancelar: ").strip()
        if s.lower() == 'sair':
            print("Operação cancelada.")
            return
        try:
            tamanho = int(s)
            if 1 <= tamanho <= max_len:
                break
            else:
                print(f"Informe um número entre 1 e {max_len}.")
        except ValueError:
            print("Entrada inválida: digite um número inteiro.")

    # random.choice(seq) -> escolhe um elemento aleatório da sequência
    # ''.join(...) -> concatena os caracteres gerados em uma única string
    senha = ''.join(random.choice(caracteres) for _ in range(tamanho))
    print(f"Senha gerada: {senha}")


# Executa o exercício 8 quando o arquivo for rodado interativamente
# exercicio8_gerador_senha()

'''
9. Agenda de Contatos (CRUD básico)

Adicionar contato (nome e telefone)
Listar todos os contatos
Buscar contato pelo nome
Remover contato
Encerrar o programa
'''

def exercicio9_agenda_contatos():
    """
    Agenda de Contatos (CRUD básico):
    - Adicionar contato (nome e telefone)
    - Listar todos os contatos
    - Buscar contato pelo nome
    - Remover contato
    - Encerrar o programa
    """
    # DICIONÁRIO: estrutura que armazena pares chave-valor
    # Aqui usamos o nome como chave e telefone como valor
    # Sintaxe: dicionario = {"chave": "valor"}
    contatos = {}  # Começamos com dicionário vazio

    # LOOP WHILE INFINITO: executa enquanto a condição for True
    # while True: significa "execute para sempre até encontrar um break"
    while True:
        # PRINT: mostra texto na tela do usuário
        print("\n=== AGENDA DE CONTATOS ===")
        print("1. Adicionar contato")
        print("2. Listar contatos")
        print("3. Buscar contato")
        print("4. Remover contato")
        print("5. Encerrar")

        # TRY/EXCEPT: tratamento de erros
        # Tenta executar o código dentro do try
        # Se der erro ValueError (usuário digitou texto em vez de número), executa except
        try:
            # INPUT: lê entrada do usuário (sempre retorna string)
            # INT(): converte string para número inteiro
            opcao = int(input("Escolha uma opção (1-5): "))
        except ValueError:
            # Se usuário digitou algo que não é número, mostra mensagem e continua
            print("Entrada inválida: digite um número entre 1 e 5.")
            continue  # Volta ao início do while

        # CONDICIONAIS IF/ELIF/ELSE: executa código baseado em condições
        if opcao == 1:  # Adicionar contato
            # STRIP(): remove espaços em branco do início e fim da string
            nome = input("Digite o nome do contato: ").strip()

            # VALIDAÇÃO: verifica se entrada está correta
            if not nome:  # String vazia é considerada "falsa" em Python
                print("Nome não pode ser vazio.")
                continue  # Volta ao início do while

            # VERIFICAÇÃO EM DICIONÁRIO: operador 'in' verifica se chave existe
            if nome in contatos:
                print(f"Contato '{nome}' já existe.")
                continue

            telefone = input("Digite o telefone: ").strip()
            if not telefone:
                print("Telefone não pode ser vazio.")
                continue

            # ATRIBUIÇÃO EM DICIONÁRIO: adiciona novo par chave-valor
            contatos[nome] = telefone
            print(f"Contato '{nome}' adicionado com sucesso! Telefone: {telefone}")

        elif opcao == 2:  # Listar contatos
            # VERIFICAÇÃO SE DICIONÁRIO ESTÁ VAZIO
            if not contatos:  # Dicionário vazio é "falso"
                print("Nenhum contato cadastrado.")
            else:
                print("\n--- LISTA DE CONTATOS ---")
                # LOOP FOR: itera sobre itens do dicionário
                # .items() retorna pares (chave, valor)
                for nome, telefone in contatos.items():
                    # F-STRING: formatação de string com variáveis
                    print(f"Nome: {nome} | Telefone: {telefone}")

        elif opcao == 3:  # Buscar contato
            nome_busca = input("Digite o nome para buscar: ").strip()
            if nome_busca in contatos:
                # ACESSO A VALOR DO DICIONÁRIO: dicionario[chave]
                print(f"Nome: {nome_busca} | Telefone: {contatos[nome_busca]}")
            else:
                print(f"Contato '{nome_busca}' não encontrado.")

        elif opcao == 4:  # Remover contato
            nome_remover = input("Digite o nome para remover: ").strip()
            if nome_remover in contatos:
                # DEL: remove item do dicionário
                del contatos[nome_remover]
                print(f"Contato '{nome_remover}' removido com sucesso!")
            else:
                print(f"Contato '{nome_remover}' não encontrado.")

        elif opcao == 5:  # Encerrar
            print("Encerrando a agenda de contatos...")
            break  # Sai do loop while

        else:
            print("Opção inválida. Escolha entre 1 e 5.")


# Executa o exercício 9 quando o arquivo for rodado interativamente
# exercicio9_agenda_contatos()

'''
10. Jogo da Forca

O usuário deve adivinhar a palavra secreta, letra por letra.

Mostre o progresso com underscores (_).

Limite de 6 tentativas erradas.

Ao final, mostre uma mensagem de vitória ou derrota.
'''

def exercicio10_jogo_forca():
    """
    Jogo da Forca:
    - Escolhe palavra secreta aleatoriamente
    - Jogador adivinha letra por letra
    - Mostra progresso com underscores
    - Máximo 6 tentativas erradas
    - Mostra resultado final
    """
    # IMPORT: carrega módulos externos do Python
    # random: módulo para gerar números/choices aleatórios
    import random

    # LISTA: estrutura que armazena múltiplos valores em sequência
    # Sintaxe: lista = ["item1", "item2", "item3"]
    palavras = [
        "python", "programacao", "computador", "algoritmo", "desenvolvimento",
        "tecnologia", "internet", "software", "hardware", "dados",
        "inteligencia", "artificial", "aprendizado", "maquina", "rede",
        "seguranca", "criptografia", "banco", "sistema", "aplicacao"
    ]

    # RANDOM.CHOICE(): escolhe um item aleatório da lista
    palavra_secreta = random.choice(palavras).upper()

    # LIST COMPREHENSION: cria lista de forma concisa
    # ["_"] * len(palavra_secreta) cria lista com tantos "_" quanto o tamanho da palavra
    letras_descobertas = ["_"] * len(palavra_secreta)

    # SET: estrutura que armazena valores únicos (sem duplicatas)
    # Sintaxe: conjunto = set() ou conjunto = {"item1", "item2"}
    letras_tentadas = set()  # Começa vazio

    # VARIÁVEIS NUMÉRICAS: armazenam números inteiros
    tentativas_erradas = 0
    max_tentativas = 6

    print("\n=== JOGO DA FORCA ===")
    # LEN(): retorna o tamanho/comprimento de uma string/lista
    print(f"A palavra tem {len(palavra_secreta)} letras.")
    print("Tente adivinhar letra por letra!")
    print("Você tem 6 tentativas erradas.")

    # LOOP WHILE COM CONDIÇÃO: executa enquanto condição for verdadeira
    while tentativas_erradas < max_tentativas:
        # MOSTRA ESTADO ATUAL DO JOGO
        print(f"\nPalavra: {' '.join(letras_descobertas)}")
        # CONDICIONAL INLINE: if/else em uma linha
        # sorted(): ordena os itens do set em ordem alfabética
        print(f"Letras tentadas: {', '.join(sorted(letras_tentadas)) if letras_tentadas else 'Nenhuma'}")
        print(f"Tentativas restantes: {max_tentativas - tentativas_erradas}")

        # VERIFICA SE GANHOU: operador 'not in' verifica ausência
        if "_" not in letras_descobertas:
            print("\n🎉 PARABÉNS! Você ganhou!")
            print(f"A palavra era: {palavra_secreta}")
            print(f"Tentativas erradas: {tentativas_erradas}")
            return  # Sai da função

        # LOOP INTERNO PARA VALIDAÇÃO DA LETRA
        while True:
            letra = input("Digite uma letra: ").strip().upper()

            # LEN(): verifica comprimento da string
            if len(letra) != 1:
                print("Digite apenas uma letra!")
                continue  # Volta ao início do while interno

            # ISALPHA(): verifica se é letra (não número ou símbolo)
            if not letra.isalpha():
                print("Digite apenas letras!")
                continue

            # VERIFICAÇÃO EM SET: operador 'in' funciona com sets
            if letra in letras_tentadas:
                print(f"Você já tentou a letra '{letra}'!")
                continue

            break  # Sai do loop de validação

        # ADIÇÃO A SET: .add() adiciona item ao conjunto
        letras_tentadas.add(letra)

        # VERIFICA SE LETRA ESTÁ NA PALAVRA
        if letra in palavra_secreta:
            print(f"✅ Boa! A letra '{letra}' está na palavra!")

            # LOOP FOR COM ENUMERATE: itera com índice e valor
            # enumerate() retorna (índice, caractere) para cada posição
            for i, char in enumerate(palavra_secreta):
                if char == letra:
                    # ATRIBUIÇÃO POR ÍNDICE: lista[índice] = novo_valor
                    letras_descobertas[i] = letra
        else:
            # OPERADOR += : incrementa variável (equivalente a tentativas_erradas = tentativas_erradas + 1)
            tentativas_erradas += 1
            print(f"❌ A letra '{letra}' não está na palavra!")
            if tentativas_erradas < max_tentativas:
                print(f"Tentativas erradas: {tentativas_erradas}/{max_tentativas}")

    # SE CHEGOU AQUI, PERDEU (atingiu máximo de tentativas)
    print("\n💀 GAME OVER! Você perdeu!")
    print(f"A palavra era: {palavra_secreta}")
    print(f"Tentativas erradas: {tentativas_erradas}/{max_tentativas}")


# Executa o exercício 10 quando o arquivo for rodado interativamente
# exercicio10_jogo_forca()

'''
🔹 11. Conversor de Moedas

Crie um programa que:

Pergunta um valor em reais (R$).

Mostra o equivalente em:

Dólar (taxa fixa, ex: 1 USD = 5,00 BRL)

Euro (taxa fixa, ex: 1 EUR = 5,50 BRL)

Peso Argentino (taxa fixa, ex: 1 ARS = 0,025 BRL)

Após cada conversão, perguntar se o usuário quer fazer outra.

👉 Dicas:

Armazene as taxas em um dicionário, ex:

taxas = {"USD": 5.0, "EUR": 5.5, "ARS": 0.025}


Fórmula: valor / taxa
'''

def exercicio11_conversor_moedas():
    """
    Conversor de Moedas:
    - Converte valor em reais para USD, EUR e ARS
    - Usa taxas fixas armazenadas em dicionário
    - Permite múltiplas conversões em loop
    """
    # DICIONÁRIOS: armazenam taxas de câmbio
    # Sintaxe: {"chave": valor}
    # Aqui: 1 unidade estrangeira = X reais
    taxas = {
        "USD": 5.0,    # 1 Dólar Americano = 5,00 Reais
        "EUR": 5.5,    # 1 Euro = 5,50 Reais
        "ARS": 0.025   # 1 Peso Argentino = 0,025 Reais
    }

    # DICIONÁRIO PARA NOMES COMPLETOS das moedas
    nomes_moedas = {
        "USD": "Dólar Americano",
        "EUR": "Euro",
        "ARS": "Peso Argentino"
    }

    print("\n=== CONVERSOR DE MOEDAS ===")
    print("Converte valores de Real (BRL) para outras moedas")
    print("Taxas fixas atualizadas")

    # LOOP WHILE INFINITO: executa até usuário escolher sair
    while True:
        # LOOP INTERNO PARA VALIDAÇÃO DO VALOR
        while True:
            try:
                # FLOAT(): converte string para número decimal
                valor_brl = float(input("\nDigite o valor em reais (R$): ").strip())

                # VALIDAÇÃO: verifica se valor não é negativo
                if valor_brl < 0:
                    print("Valor não pode ser negativo. Tente novamente.")
                    continue  # Volta ao início do loop interno

                break  # Sai do loop de validação se tudo estiver OK

            except ValueError:
                # Se usuário digitou texto em vez de número
                print("Valor inválido. Digite um número (ex: 100.50)")

        # MOSTRA VALOR INFORMADO com formatação
        # :.2f significa "2 casas decimais"
        print(f"\n💰 Valor informado: R$ {valor_brl:.2f}")
        print("-" * 40)  # Linha separadora

        # LOOP FOR: itera sobre itens do dicionário
        # .items() retorna pares (chave, valor)
        for moeda, taxa in taxas.items():
            # CÁLCULO DA CONVERSÃO: divide valor em reais pela taxa
            valor_convertido = valor_brl / taxa

            # BUSCA NOME COMPLETO no outro dicionário
            nome_moeda = nomes_moedas[moeda]

            # EXIBE RESULTADO formatado
            print(f"{nome_moeda} ({moeda}): {valor_convertido:.2f}")

        print("-" * 40)  # Linha separadora

        # LOOP PARA PERGUNTAR SE QUER CONTINUAR
        while True:
            # .lower() converte para minúsculas para facilitar comparação
            resposta = input("Deseja converter outro valor? (s/n): ").strip().lower()

            # LISTA DE RESPOSTAS VÁLIDAS PARA "SIM"
            if resposta in ['s', 'sim', 'y', 'yes']:
                break  # Sai do loop interno, continua o loop principal

            # LISTA DE RESPOSTAS VÁLIDAS PARA "NÃO"
            elif resposta in ['n', 'não', 'nao', 'no']:
                print("Obrigado por usar o conversor de moedas!")
                return  # Sai da função completamente

            else:
                # Se resposta não foi reconhecida
                print("Responda com 's' para sim ou 'n' para não.")


# Executa o exercício 11 quando o arquivo for rodado interativamente
exercicio11_conversor_moedas()

'''
🔹 12. Calculadora de IMC (Índice de Massa Corporal)

Crie um programa que:

Pergunta o nome da pessoa.

Pergunta o peso (kg) e a altura (m).

Calcula o IMC = peso / (altura²).

Mostra o resultado com duas casas decimais.

Classifica o IMC conforme a tabela:

Menor que 18.5 → Abaixo do peso

Entre 18.5 e 24.9 → Peso normal

Entre 25.0 e 29.9 → Sobrepeso

Entre 30.0 e 34.9 → Obesidade grau I

Entre 35.0 e 39.9 → Obesidade grau II

Acima de 40.0 → Obesidade grau III

Após mostrar o resultado, perguntar se o usuário quer calcular novamente (loop).
'''

from colorama import Fore, Style

def calcular_imc(peso, altura):
    imc = peso / (altura ** 2)
    if imc < 18.5:
        classificacao = Fore.YELLOW + "Abaixo do peso" + Style.RESET_ALL
    elif 18.5 <= imc < 25.0:
        classificacao = Fore.GREEN + "Peso normal" + Style.RESET_ALL
    elif 25.0 <= imc < 30.0:
        classificacao = Fore.YELLOW + "Sobrepeso" + Style.RESET_ALL
    elif 30.0 <= imc < 35.0:
        classificacao = Fore.RED + "Obesidade grau I" + Style.RESET_ALL
    elif 35.0 <= imc < 40.0:
        classificacao = Fore.RED + "Obesidade grau II" + Style.RESET_ALL
    else:
        classificacao = Fore.RED + "Obesidade grau III" + Style.RESET_ALL
    return imc, classificacao


def exercicio12_calculadora_imc():
    """
    Calculadora de IMC (Índice de Massa Corporal):
    - Pergunta nome, peso e altura
    - Calcula e classifica o IMC
    - Permite múltiplos cálculos em loop
    """
    print("\n=== CALCULADORA DE IMC ===")

    while True:
        # Pergunta nome
        nome = input("Digite seu nome: ").strip()

        # LOOP PARA OBTER PESO VÁLIDO
        while True:
            try:
                peso = float(input("Digite seu peso (kg): ").strip())
                if peso <= 0:
                    print("Peso inválido. Digite um peso positivo.")
                    continue
                break
            except ValueError:
                print("Entrada inválida. Digite um número.")

        # LOOP PARA OBTER ALTURA VÁLIDA
        while True:
            try:
                altura = float(input("Digite sua altura (m): ").strip())
                if altura <= 0:
                    print("Altura inválida. Digite uma altura positiva.")
                    continue
                break
            except ValueError:
                print("Entrada inválida. Digite um número.")

        # CÁLCULO DO IMC
        imc, classificacao = calcular_imc(peso, altura)

        # MOSTRA RESULTADO
        print(f"\nOlá {nome}, seu IMC é {imc:.2f} ({classificacao}).")

        # PERGUNTA SE DESEJA CALCULAR NOVAMENTE
        while True:
            resposta = input("Deseja calcular o IMC de outra pessoa? (s/n): ").strip().lower()
            if resposta in ['s', 'sim', 'y', 'yes']:
                break
            elif resposta in ['n', 'não', 'nao', 'no']:
                print("Obrigado por usar a calculadora de IMC!")
                return
            else:
                print("Responda com 's' para sim ou 'n' para não.")


# Executa o exercício 12 quando o arquivo for rodado interativamente
exercicio12_calculadora_imc()