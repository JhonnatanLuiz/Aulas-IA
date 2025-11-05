for i in range(1, 51):  # Inicia em 1 e vai até 50 (51 é exclusivo)
    if i % 3 == 0 and i % 5 == 0:  # Verifica se é múltiplo de 3 E de 5 (múltiplo de 15)
        print("FizzBuzz")  # Imprime "FizzBuzz" se for múltiplo de ambos
    elif i % 3 == 0:  # Verifica se é múltiplo apenas de 3
        print("Fizz")  # Imprime "Fizz" se for múltiplo de 3
    elif i % 5 == 0:  # Verifica se é múltiplo apenas de 5
        print("Buzz")  # Imprime "Buzz" se for múltiplo de 5
    else:  # Se não for múltiplo de 3 nem de 5
        print(i)  # Imprime o número original