// 1. Crie uma função que receba a idade em anos e retorne a idade em dias.

function calcIdadeDias(idadeEmAnos) {
    return idadeEmAnos * 365;
}
console.log(calcIdadeDias(65)); // 23725
console.log(calcIdadeDias(0)); // 0
console.log(calcIdadeDias(20)); // 7300

// 2. Crie uma função que receba um número como argumento, incremente o número em +1 e retorne o resultado.

function addition(n) {
   return Number(n) + 1; //Number() converte string em número
}

console.log(addition(0)); // 1
console.log(addition(9)); // 10
console.log(addition(-3)); // -2

// 3. Crie um programa usando um loop while, imprima os números de 1 á 100, multiplos de 3 imprima "Fizz", multiplos de 5 imprima "Buzz" e multiplos de 3 e 5 imprima "FizzBuzz".

let numero = 1;
while (numero <= 100) {
    if (numero % 3 === 0 && numero % 5 === 0) {
        console.log("FizzBuzz");
    } else if (numero % 3 === 0) {
        console.log("Fizz");
    } else if (numero % 5 === 0) {
        console.log("Buzz");
    } else {
        console.log(numero);
    }
    numero++;
}


// 4. FizzBuzz com for

let numero2 = 1;
for (let numero2 = 1; numero2 <= 100; numero2++) {
    if (numero2 % 3 === 0 && numero2 % 5 === 0) { //if é se = se for esse caso
        console.log("FizzBuzz");
    } else if (numero2 % 3 === 0) { // else if é senão se = se não for o caso acima
        console.log("Fizz");
    } else if (numero2 % 5 === 0) {
        console.log("Buzz");
    } else { // else é senão = se não for nenhum dos casos acima
        console.log(numero2);
    }
}
