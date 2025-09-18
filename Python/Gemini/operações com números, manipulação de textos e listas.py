# Exercício 1: Calculadora de Média
# Objetivo: Praticar o uso de variáveis, operadores aritméticos e a formatação de strings.
#
# Instruções:
#
# Crie três variáveis, nota1, nota2, e nota3, e atribua a elas valores numéricos (que podem ser decimais, como 7.5).
#
# Calcule a média dessas três notas. A média é a soma das notas dividida pelo número de notas.
#
# Armazene o resultado em uma variável chamada media.
#
# Imprima o resultado de forma clara, por exemplo: "As notas foram 7.5, 8.0 e 9.0, e a média é 8.17." (Dica: você pode precisar formatar o número de casas decimais).

# IMPORT: carrega módulos externos do Python
# random: módulo para gerar números aleatórios (usado no Projeto 4)
import random
import json
import os
import re

def ler_nota(posicao: int) -> float:
    """Lê uma nota do usuário, aceita ',' ou '.', valida e retorna float entre 0 e 10."""
    while True:
        s = input(f"Digite a nota {posicao} (0-10): ").strip()
        # aceita vírgula como separador decimal
        s = s.replace(',', '.')
        try:
            n = float(s)
            if 0 <= n <= 10:
                return n
            else:
                print("Nota inválida: informe um número entre 0 e 10.")
        except ValueError:
            print("Entrada inválida: digite um número (ex.: 7.5).")

# Ler as três notas do usuário
nota1 = ler_nota(1)
nota2 = ler_nota(2)
nota3 = ler_nota(3)

media = (nota1 + nota2 + nota3) / 3
print(f"As notas foram {nota1:.1f}, {nota2:.1f} e {nota3:.1f}, e a média é {media:.2f}.")

# Verificação de conceito com três faixas
if media >= 7:
    print("Aprovado!")
elif media >= 5:  # aqui já sabemos media < 7 por causa do if anterior
    print("Recuperação!")
else:
    print("Reprovado!")

# Exercício 2: Criador de E-mail
# Objetivo: Praticar a manipulação e concatenação de strings.
#
# Instruções:
#
# Crie duas variáveis, nome e sobrenome, com seus dados ou dados fictícios.
#
# Imagine que o e-mail de um usuário é sempre a primeira letra do nome, seguida pelo sobrenome, e o domínio "@empresa.com".
# Ex: para "Ana Silva", o e-mail seria "asilva@empresa.com".
#
# Crie uma variável email que construa esse endereço de e-mail a partir do nome e sobrenome.
#
# Importante: O e-mail deve estar todo em letras minúsculas. (Dica: use .lower()).
#
# Imprima na tela uma mensagem como: "O e-mail para [Nome Completo] é: [email gerado]".

nome = "Jhonnatan"
sobrenome = "Luiz"

# use um domínio válido em vez de uma URL
domain = "empresa.com"
email = f"{nome.strip()[0].lower()}{sobrenome.strip().lower()}@{domain}"

print(f"O e-mail para {nome.strip().title()} {sobrenome.strip().title()} é: {email}")

# Exercício 3: Planejador de Viagem
# Objetivo: Praticar a criação e manipulação de listas.
#
# Instruções:
#
# Crie uma lista chamada destinos_viagem com pelo menos três cidades que você gostaria de visitar.
#
# Imprima a lista original.
#
# Você se decidiu e o primeiro destino da lista será sua próxima viagem! Remova-o da lista de "desejos" e guarde-o em uma variável chamada proximo_destino.
#
# Um amigo sugeriu um novo lugar! Adicione um novo destino ao final da sua lista de desejos.
#
# Imprima três mensagens separadas:
#
# "Meu próximo destino é: [proximo_destino]"
#
# "Ainda desejo visitar: [lista de desejos atualizada]"
#
# "No total, ainda tenho [número] destinos na minha lista de desejos."

destinos_viagem = ["Paris", "Nova York", "Tóquio"]

print("Lista de desejos de viagem:")
print(destinos_viagem)

proximo_destino = destinos_viagem.pop(0)

destinos_viagem.append("Sydney")

print(f"Meu próximo destino é: {proximo_destino}")

print(f"Ainda desejo visitar: {destinos_viagem}")

print(f"No total, ainda tenho {len(destinos_viagem)} destinos na minha lista de desejos.")

# Projeto 4: Jogo de Adivinhação de Número (Versão Melhorada)
# Este é um projeto clássico que é excelente para praticar lógica de loops e condicionais.
#
# Conceitos Principais: Módulos (random), loops while, condicionais (if/elif/else), tratamento de erros (try/except).
#
# MELHORIAS IMPLEMENTADAS:
# - Limite máximo de 10 tentativas
# - Mostra o número secreto ao final
# - Opção para jogar novamente
# - Mensagens mais amigáveis
# - Validação robusta de entrada
#
# Descrição:
#
# O programa deve "pensar" em um número inteiro aleatório entre 1 e 100. Para isso, você precisará importar e usar o módulo random do Python.
#
# Dica: Pesquise por random.randint(a, b).
#
# O programa deve rodar em um loop, pedindo ao usuário para adivinhar o número.
#
# A cada tentativa do usuário, o programa deve dar uma dica, dizendo se o número secreto é maior ou menor que o palpite.
#
# O loop deve continuar até que o usuário acerte o número ou atinja o limite de tentativas.
#
# Ao acertar, o programa deve parabenizar o usuário e mostrar quantas tentativas ele levou.
#
# Desafio de Robustez: Use um bloco try/except para garantir que, se o usuário digitar algo que não seja um número, o programa exiba uma mensagem de erro amigável e continue o jogo, sem quebrar.

# IMPORT: carrega módulos externos do Python
# random: módulo para gerar números aleatórios
# (import já feito no topo do arquivo)

# FUNÇÃO PRINCIPAL DO JOGO
def jogar_adivinhacao():
    """
    Função que executa uma partida completa do jogo de adivinhação.
    Retorna True se o jogador venceu, False se perdeu.
    """
    # RANDOM.RANDINT(): gera um número inteiro aleatório entre os valores especificados
    # Aqui: número entre 1 e 100 (inclusive)
    numero_secreto = random.randint(1, 100)

    # VARIÁVEL PARA CONTAR TENTATIVAS: começa em 0
    tentativas = 0

    # LIMITE MÁXIMO DE TENTATIVAS: evita loop infinito
    max_tentativas = 10

    print("\n🎯 JOGO DE ADIVINHAÇÃO!")
    print("Tente adivinhar o número secreto entre 1 e 100.")
    print(f"Você tem {max_tentativas} tentativas!")

    # LOOP WHILE: executa enquanto condição for verdadeira
    # Aqui: enquanto tentativas < max_tentativas
    while tentativas < max_tentativas:
        try:
            # INPUT(): lê entrada do usuário como string
            # INT(): converte string para número inteiro
            palpite = int(input(f"\nTentativa {tentativas + 1}/{max_tentativas} - Digite seu palpite: "))

            # VALIDAÇÃO DE INTERVALO: verifica se palpite está entre 1 e 100
            if palpite < 1 or palpite > 100:
                print("❌ Erro: Digite um número entre 1 e 100!")
                continue  # Volta ao início do loop sem contar como tentativa

            # INCREMENTA CONTADOR DE TENTATIVAS
            tentativas += 1

            # CONDICIONAIS IF/ELIF/ELSE: executa código baseado em condições
            if palpite == numero_secreto:
                # ACERTOU: mostra mensagem de parabéns e retorna True
                print("\n🎉 PARABÉNS! Você acertou!")
                print(f"O número secreto era: {numero_secreto}")
                print(f"Você conseguiu em {tentativas} tentativas!")

                # AVALIAÇÃO DE PERFORMANCE baseada no número de tentativas
                if tentativas <= 3:
                    print("🏆 Impressionante! Você é um mestre!")
                elif tentativas <= 6:
                    print("⭐ Muito bom! Excelente desempenho!")
                else:
                    print("✅ Bom trabalho! Você conseguiu!")

                return True  # Jogador venceu

            elif palpite < numero_secreto:
                # DICA: número secreto é maior
                print("📈 Dica: O número secreto é MAIOR que seu palpite.")
            else:
                # DICA: número secreto é menor
                print("📉 Dica: O número secreto é MENOR que seu palpite.")

        except ValueError:
            # TRATAMENTO DE ERRO: se usuário digitou algo que não é número
            print("❌ Entrada inválida! Digite apenas números inteiros.")

    # SE CHEGOU AQUI: jogador atingiu o limite de tentativas
    print("\n💀 GAME OVER! Você não conseguiu adivinhar.")
    print(f"O número secreto era: {numero_secreto}")
    print(f"Você usou todas as {max_tentativas} tentativas disponíveis.")
    return False  # Jogador perdeu

# LOOP PRINCIPAL DO PROGRAMA: permite jogar múltiplas vezes
while True:
    # CHAMA A FUNÇÃO DO JOGO
    venceu = jogar_adivinhacao()

    # PERGUNTA SE QUER JOGAR NOVAMENTE
    while True:
        resposta = input("\n🔄 Quer jogar novamente? (s/n): ").strip().lower()

        # VALIDAÇÃO DE RESPOSTA: aceita múltiplas formas de "sim" e "não"
        if resposta in ['s', 'sim', 'y', 'yes']:
            print("\n--- NOVA PARTIDA ---")
            break  # Sai do loop interno, continua o loop principal

        elif resposta in ['n', 'não', 'nao', 'no']:
            print("\n👋 Obrigado por jogar! Até a próxima!")
            exit()  # Sai do programa completamente

        else:
            # RESPOSTA INVÁLIDA: pede novamente
            print("❓ Responda com 's' para sim ou 'n' para não.")

# Projeto 5: Gerenciador de Contatos (Introdução a Dicionários)
#
# Este projeto vai te introduzir a uma das estruturas de dados mais poderosas do Python: o dicionário. Diferente da lista, que é ordenada por índices numéricos, o dicionário usa "chaves" (como uma palavra) para guardar "valores". É perfeito para um catálogo ou agenda.
#
# Conceitos Principais: Dicionários, funções para cada operação, loop principal while com um menu de opções.
#
# Descrição:
#
# Crie um programa que funcione como uma agenda de contatos, armazenando nome e telefone. A estrutura ideal para isso é um dicionário, onde o nome do contato é a chave e o telefone é o valor.
#
# Dica: Você pode começar com um dicionário vazio: contatos = {}.
#
# O programa deve exibir um menu de opções para o usuário e continuar rodando até que o usuário escolha "Sair". O menu deve ser:
#
# *** Agenda de Contatos ***
# 1. Adicionar Contato
# 2. Buscar Contato
# 3. Listar Todos os Contatos
# 4. Remover Contato
# 5. Sair
# Estruture seu código com funções! Crie uma função para cada opção do menu (ex: adicionar_contato(agenda), buscar_contato(agenda), etc.), onde agenda é o dicionário que você passa como argumento.
#
# Funcionalidades:
#
# Adicionar: Pede um nome e um telefone. Se o nome já existir, avise. Senão, adicione ao dicionário.
#
# Buscar: Pede um nome e, se ele existir no dicionário, mostra o telefone. Senão, avisa que não foi encontrado.
#
# Listar: Mostra todos os nomes e telefones da agenda de forma organizada.
#
# Remover: Pede um nome e, se ele existir, o remove do dicionário.
#
# Sair: Encerra o programa.

# ----------------------
# Projeto 5: Agenda de Contatos (melhorada)
# ----------------------
# Explicação geral (resumida):
# - Usamos um dicionário para armazenar contatos: chave = nome, valor = telefone.
# - Cada operação (adicionar, buscar, listar, remover) está em uma função separada.
# - Implementamos persistência básica usando um arquivo JSON (carregar/salvar).
# - Também adicionamos validação simples de telefone, busca parcial e listagem ordenada.

AGENDA_PATH = "agenda.json"  # arquivo para salvar/ler os contatos


def carregar_agenda(path: str = AGENDA_PATH) -> dict:
    """Carrega a agenda de um arquivo JSON. Retorna dicionário vazio se não existir.

    Por que usar JSON: é um formato simples, legível e suficiente para um dicionário.
    """
    if not os.path.exists(path):
        return {}
    try:
        with open(path, "r", encoding="utf-8") as f:
            return json.load(f)
    except Exception:
        # Se houver erro de leitura/decodificação, retornamos agenda vazia
        return {}


def salvar_agenda(agenda: dict, path: str = AGENDA_PATH) -> None:
    """Salva a agenda em disco no formato JSON (substitui o arquivo).

    Chama-se sempre após mudanças importantes para manter persistência.
    """
    try:
        with open(path, "w", encoding="utf-8") as f:
            json.dump(agenda, f, ensure_ascii=False, indent=2)
    except Exception as e:
        print("Erro ao salvar a agenda:", e)


def validar_telefone(telefone: str) -> bool:
    """Validação simples de telefone.

    Aceita dígitos, espaços, parênteses, traços e '+' (ex.: +55 (11) 99999-9999).
    Retorna True se passar na regex básica.
    """
    telefone = telefone.strip()
    if not telefone:
        return False
    # Regex: apenas caracteres permitidos
    return re.fullmatch(r"[\d\s\-\(\)\+]+", telefone) is not None


def adicionar_contato(agenda: dict) -> None:
    """Pede nome e telefone, valida e adiciona na agenda.

    - Normaliza nome (title case) e telefone mínimo de validação.
    - Salva a agenda em arquivo após adicionar.
    """
    nome = input("Digite o nome do contato: ").strip()
    if not nome:
        print("Nome não pode ser vazio.")
        return
    # Normalizar nome para formato legível: cada palavra com inicial maiúscula
    nome_norm = " ".join(p.capitalize() for p in nome.split())

    if nome_norm in agenda:
        print(f"❌ O contato '{nome_norm}' já existe.")
        return

    telefone = input("Digite o telefone do contato: ").strip()
    if not validar_telefone(telefone):
        print("Telefone inválido. Use apenas dígitos, espaços, '()', '-' ou '+'.")
        return

    agenda[nome_norm] = telefone
    salvar_agenda(agenda)
    print(f"✅ Contato '{nome_norm}' adicionado com sucesso! Telefone: {telefone}")


def buscar_contato(agenda: dict) -> None:
    """Busca por nome (aceita correspondência parcial, case-insensitive).

    Exibe todos os contatos que contenham a substring informada.
    """
    query = input("Digite o nome ou parte do nome para buscar: ").strip()
    if not query:
        print("Busca vazia.")
        return
    query_low = query.lower()
    resultados = [(n, t) for n, t in agenda.items() if query_low in n.lower()]
    if not resultados:
        print("❌ Nenhum contato encontrado para a busca informada.")
        return
    print(f"🔎 Foram encontrados {len(resultados)} contato(s):")
    for nome, tel in sorted(resultados, key=lambda x: x[0].lower()):
        print(f"- {nome}: {tel}")


def listar_contatos(agenda: dict) -> None:
    """Lista todos os contatos em ordem alfabética por nome.

    Explicação: sorted() cria uma ordem previsível para facilitar leitura.
    """
    if not agenda:
        print("📋 Agenda vazia!")
        return
    print("📋 Lista de Contatos:")
    for nome, telefone in sorted(agenda.items(), key=lambda x: x[0].lower()):
        print(f"{nome}: {telefone}")


def remover_contato(agenda: dict) -> None:
    """Remove um contato. Permite busca parcial para escolher o contato.

    - Se múltiplos resultados, exibe índices para o usuário escolher.
    - Confirmação antes de remover.
    - Salva a agenda após remoção.
    """
    query = input("Digite o nome ou parte do nome para remover: ").strip()
    if not query:
        print("Entrada vazia.")
        return
    resultados = [(n, t) for n, t in agenda.items() if query.lower() in n.lower()]
    if not resultados:
        print("❌ Nenhum contato encontrado para a busca informada.")
        return

    if len(resultados) == 1:
        nome_escolhido = resultados[0][0]
    else:
        print("Foram encontrados vários contatos:")
        for i, (n, t) in enumerate(resultados, 1):
            print(f"{i}. {n}: {t}")
        try:
            idx = int(input("Escolha o número do contato que deseja remover: ").strip())
            if not (1 <= idx <= len(resultados)):
                print("Índice inválido.")
                return
            nome_escolhido = resultados[idx - 1][0]
        except ValueError:
            print("Entrada inválida.")
            return

    confirma = input(f"Tem certeza que deseja remover '{nome_escolhido}'? (s/n): ").strip().lower()
    if confirma in ("s", "sim"):
        del agenda[nome_escolhido]
        salvar_agenda(agenda)
        print(f"✅ Contato '{nome_escolhido}' removido com sucesso!")
    else:
        print("Remoção cancelada.")


def main():
    # Carrega agenda do disco ao iniciar o programa
    agenda = carregar_agenda()
    while True:
        print("*** Agenda de Contatos ***\n1. Adicionar Contato\n2. Buscar Contato\n3. Listar Todos os Contatos\n4. Remover Contato\n5. Sair")
        opcao = input("Escolha uma opção: ").strip()

        if opcao == "1":
            adicionar_contato(agenda)
        elif opcao == "2":
            buscar_contato(agenda)
        elif opcao == "3":
            listar_contatos(agenda)
        elif opcao == "4":
            remover_contato(agenda)
        elif opcao == "5":
            # Salva antes de sair (garantia adicional)
            salvar_agenda(agenda)
            print("👋 Saindo... Agenda salva.")
            break
        else:
            print("❌ Opção inválida!")


if __name__ == "__main__":
    main()