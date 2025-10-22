//Desafio nivel médio 4

// Função que recebe um array de números e retorna um novo array substituindo os números conforme as regras do FizzBuzz

function fizzBuzz(numeros) { // Recebe um array de números
    return numeros.map(num => { // Usa map para criar um novo array
        if (num % 3 === 0 && num % 5 === 0) { // Verifica se é múltiplo de 3 e 5
            return "FizzBuzz";  // Retorna "FizzBuzz" se for múltiplo de 3 e 5
        } else if (num % 3 === 0) { // Verifica se é múltiplo de 3
            return "Fizz";  // Retorna "Fizz" se for múltiplo de 3
        } else if (num % 5 === 0) { // Verifica se é múltiplo de 5
            return "Buzz";  // Retorna "Buzz" se for múltiplo de 5
        } else { // Caso contrário
            return num; // Retorna o número original
        }
    });
}
console.log(fizzBuzz([1, 3, 5, 15, 22, 30, 33, 50, 52])); // Exemplo de uso: [1, "Fizz", "Buzz", "FizzBuzz", 22, "FizzBuzz", "Fizz", "Buzz", 52]

// Função que recebe um array de elementos e retorna um objeto com a frequência de cada elemento

function contarFrequencia(arr) { // Recebe um array de elementos
    const frequencias = {}; // Objeto para armazenar a frequência
    for (let item of arr) { // Itera sobre cada elemento do array
        // Se frequencias[item] ainda não existe, (frequencias[item] || 0) retorna 0, então começamos a contagem do zero e somamos 1
        frequencias[item] = (frequencias[item] || 0) + 1; // Incrementa a contagem
    }
    return frequencias; // Retorna o objeto com as frequências
}
console.log(contarFrequencia(['maçã', 'banana', 'maçã', 'laranja', 'banana', 'maçã'])); // Exemplo de uso: { maçã: 3, banana: 2, laranja: 1 }