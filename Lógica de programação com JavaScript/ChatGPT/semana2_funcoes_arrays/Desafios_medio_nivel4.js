//Desafio nivel médio 4

// ========================================
// FIZZBUZZ SIMPLES (Similar ao Python)
// ========================================
console.log("=== FizzBuzz Simples (1 a 50) ===");

// Loop de 1 até 49 (JavaScript usa i < 50 para incluir até 49, ou i <= 50 para incluir 50)
for (let i = 1; i <= 50; i++) { // Inicia em 1 e vai até 50
    if (i % 3 === 0 && i % 5 === 0) { // Verifica se é múltiplo de 3 E de 5 (múltiplo de 15)
        console.log("FizzBuzz"); // Imprime "FizzBuzz" se for múltiplo de ambos
    } else if (i % 3 === 0) { // Verifica se é múltiplo apenas de 3
        console.log("Fizz"); // Imprime "Fizz" se for múltiplo de 3
    } else if (i % 5 === 0) { // Verifica se é múltiplo apenas de 5
        console.log("Buzz"); // Imprime "Buzz" se for múltiplo de 5
    } else { // Se não for múltiplo de 3 nem de 5
        console.log(i); // Imprime o número original
    }
}

console.log("\n"); // Linha em branco para separar

// ========================================
// COMPARAÇÃO: PYTHON vs JAVASCRIPT
// ========================================
/*
PYTHON:
for i in range(1, 50):              # range(1, 50) gera números de 1 até 49
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
1. Python: range(1, 50) | JavaScript: for(let i = 1; i <= 50; i++)
2. Python: and | JavaScript: &&
3. Python: == | JavaScript: === (recomendado para evitar coerção de tipos)
4. Python: print() | JavaScript: console.log()
5. Python: elif | JavaScript: else if
6. Python: indentação | JavaScript: chaves {}
7. Python: sem ponto e vírgula | JavaScript: ponto e vírgula opcional (boa prática usar)
*/

// ========================================
// FIZZBUZZ COM FUNÇÃO E ARRAY (Versão Original - Mais Complexa)
// ========================================
console.log("=== FizzBuzz com Array (Versão Funcional) ===");

// Função que recebe um array de números e retorna um novo array substituindo os números conforme as regras do FizzBuzz

function fizzBuzz(numeros) { // Recebe um array de números como parâmetro
    return numeros.map(num => { // Usa map para criar um novo array transformado
        if (num % 3 === 0 && num % 5 === 0) { // Verifica se é múltiplo de 3 E de 5
            return "FizzBuzz";  // Retorna "FizzBuzz" se for múltiplo de 3 e 5
        } else if (num % 3 === 0) { // Verifica se é múltiplo de 3
            return "Fizz";  // Retorna "Fizz" se for múltiplo de 3
        } else if (num % 5 === 0) { // Verifica se é múltiplo de 5
            return "Buzz";  // Retorna "Buzz" se for múltiplo de 5
        } else { // Caso contrário (não é múltiplo nem de 3 nem de 5)
            return num; // Retorna o número original sem modificação
        }
    }); // O map retorna um novo array com os valores transformados
}
console.log(fizzBuzz([1, 3, 5, 15, 22, 30, 33, 50, 52])); // Exemplo de uso: [1, "Fizz", "Buzz", "FizzBuzz", 22, "FizzBuzz", "Fizz", "Buzz", 52]

console.log("\n");

// ========================================
// FUNÇÃO CONTAR FREQUÊNCIA (Array de Elementos)
// ========================================

function contarFrequencia(arr) { // Recebe um array de elementos (strings, números, etc)
    const frequencias = {}; // Cria um objeto vazio para armazenar as contagens
    for (let item of arr) { // Itera sobre cada elemento do array usando for...of
        // Se frequencias[item] ainda não existe, (frequencias[item] || 0) retorna 0
        // Então começamos a contagem do zero e somamos 1
        frequencias[item] = (frequencias[item] || 0) + 1; // Incrementa a contagem do item
    }
    return frequencias; // Retorna o objeto com todas as frequências contadas
}
console.log(contarFrequencia(['maçã', 'banana', 'maçã', 'laranja', 'banana', 'maçã'])); // Exemplo de uso: { maçã: 3, banana: 2, laranja: 1 }