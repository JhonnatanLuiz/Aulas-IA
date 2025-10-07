/*Como rodar no Node.js
!. Abra o terminal (Prompt de Comando, PowerShell, Terminal do VSCode, etc.)
2. Navegue no arquivo atual (ex: cd "C:\Users\Johnnie\Desktop\Aulas IA\Lógica de programação com JavaScript\ChatGPT\semana2_funcoes_arrays")
3. Execute o arquivo (ex: node "C:\Users\Johnnie\Desktop\Aulas IA\Lógica de programação com JavaScript\ChatGPT\semana2_funcoes_arrays\Desafios_facil.js")
4. navegue até a pasta do arquivo e execute o comando: cd "C:\Users\Johnnie Desktop\OneDrive\Documents\GitHub\Aulas IA\Lógica de programação com JavaScript\ChatGPT\semana2_funcoes_arrays"
node Desafios_facil.js
Observação importante, execute este comando se o comando node não for reconhecido: $env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User")
*/

// Desafios Nivel Fácil- Estilo Edabit

// 1. Crie uma função que retorne o dobro do número fornecido.
function dobro(n) {
    return n * 2;
}
console.log(dobro(2)); // 4
console.log(dobro(7)); // 14
console.log(dobro(-3)); // -6

// 2. Calcule a area de um retângulo dado sua base e altura.

function areaRetangulo(base, altura) {
    return base * altura;
}
console.log(areaRetangulo(5, 10)); // 50
console.log(areaRetangulo(3, 7)); // 21
console.log(areaRetangulo(2, 2)); // 4

// 3. Calcule a idade em dias de uma pessoa, dado sua idade em anos.

function idadeEmDias(anos) {
    return anos * 365;
}
console.log(idadeEmDias(1)); // 365
console.log(idadeEmDias(10)); // 3650
console.log(idadeEmDias(0)); // 0

// 4. Converta minutos em segundos.

function converterSegundos(minutos) {
    return minutos * 60;
}
console.log(converterSegundos(5)); // 300
console.log(converterSegundos(1)); // 60
console.log(converterSegundos(10)); // 600

// 5. Retorne o último elemento de um array.

function ultimoElemento(lista) {
    return lista[lista.length - 1];
}
console.log(ultimoElemento([1, 2, 3, 4])); // 4
console.log(ultimoElemento(['a', 'b', 'c'])); // 'c'
console.log(ultimoElemento([true, false, true])); // true

// 6. Retorne o primeiro elemento de um array.

let primeiroElemento = (array) => {
    return array[0];
}

console.log(primeiroElemento([1, 2, 3])); // 1
console.log(primeiroElemento(['a', 'b', 'c'])); // 'a'
console.log(primeiroElemento([true, false, true])); // true

// 7. Verifique se um número é par.

let ehPar = (num) => {
    return num % 2 === 0;
}

console.log(ehPar(4)); // true
console.log(ehPar(7)); // false
console.log(ehPar(0)); // true

// 8. Calcule o perímetro de um quadrado dado o comprimento do lado.

let perimetroQuadrado = (lado) => {
    return lado * 4;
}

console.log(perimetroQuadrado(5)); // 20
console.log(perimetroQuadrado(10)); // 40

// 9. Verifique se a soma de dois números é maior que 100.

let somaMaiorQue100 = (a, b) => {
    return (a + b) > 100;
}

console.log(somaMaiorQue100(50, 60)); // true
console.log(somaMaiorQue100(30, 40)); // false

// 10. Inverter uma string

let inverterString = (str) => {
    return str.split('').reverse().join('');
}

console.log(inverterString("casa")); // "asac"
console.log(inverterString("banana")); // "ananab"

// Qual o valor impresso no console?
// Porque a variável 'num' foi redeclarada, o valor final será o último atribuído.
// Em JavaScript, usar 'var' permite redeclaração da variável no mesmo escopo.
// Portanto, o valor impresso será 20.
// Agora, se fosse 'let' ou 'const', isso geraria um erro de sintaxe.
// porque 'let' e 'const' não permitem redeclaração no mesmo escopo.
//Let e Const permitem reatribuição, mas não redeclaração.

var num = 6;
var num = 20;
console.log(num); // 20

// Qual é a diferença entre redeclaração e reatribuição de variáveis em JavaScript?
// Redeclaração é quando você declara a mesma variável novamente usando 'var', 'let' ou 'const'.
// Reatribuição é quando você altera o valor de uma variável já declarada.
// Exemplo de redeclaração com 'var':
var x = 10;
var x = 20; // Redeclaração permitida com 'var'

// Exemplo de reatribuição:
let y = 30;
y = 40; // Reatribuição permitida com 'let'

// Const não permite reatribuição e redeclaração:
const z = 50;
// z = 60; // Isso geraria um erro de tipo
// const z = 70; // Isso geraria um erro de sintaxe

// Arrays e Funções

// 11. Calcule a média de idades em um array de idades.

let idades = [25, 30, 35, 40, 45, 50];


function calcularIdadeMedia(idades) {
    let soma = 0;
    for (let i = 0; i < idades.length; i++) {
        soma += idades[i];
    }
    return soma / idades.length;
}

console.log(calcularIdadeMedia(idades)); // 37.5

// 12. Some todos os números em um array.

let somaArray = (array) => {
    return array.reduce((acc, curr) => acc + curr, 0);
}

console.log(somaArray([1, 2, 3, 4])); // 10
console.log(somaArray([10, 10, 10])); // 30

console.log(somaArray);

// 13. Conte quantos números pares existem em um array.

let ContarPares = (array) => {
    let count = 0;
    for (let num of array) {
        if (num % 2 === 0) {
            count++;
        }
    }
    return count;
}

console.log(ContarPares([1, 2, 3, 4, 5, 6])); // 3
console.log(ContarPares([10, 11, 12])); // 2

// 14. Sem usar a função Math.max(), encontre o maior número em um array.

let maiorNumero = (array) => {
    let max = array[0];
    for (let i = 1; i < array.length; i++) {
        if (array[i] > max) {
            max = array[i];
        }
    }
    return max;
}

console.log(maiorNumero([1, 2, 3, 4, 5])); // 5
console.log(maiorNumero([-1, -2, -3, -4])); // -1
console.log(maiorNumero([10, 20, 5, 30])); // 30

// 15. Conte quantas vezes uma letra aparece em uma string.

let contarLetra = (str, letra) => {
    let count = 0;
    for (let i = 0; i < str.length; i++) {
        if (str[i] === letra) {
            count++;
        }
    }
    return count;
}

console.log(contarLetra("banana", "a")); // 3
console.log(contarLetra("morango", "o")); // 2

// 16. Crie uma função que retorne true se todos os elementos em um array forem iguais.

let todosIguais = (array) => {
    for (let i = 1; i < array.length; i++) {
        if (array[i]!== array[0]) {
            return false;
        }
    }
    return true;
}

console.log(todosIguais([1, 1, 1])); // true
console.log(todosIguais([1, 2, 1])); // false

// 17. Some todos os números positivos em um array.

let somaPositivos = (array) => {
    return array
        .filter(n => n > 0)
        .reduce((acc, n) => acc + n, 0);
}

console.log(somaPositivos([1, -2, 3, 4, -5])); // 8
console.log(somaPositivos([-1, -2, -3])); // 0
console.log(somaPositivos([10, 5, 0])); // 15

// 18. Calcule a média de um array.

let mediaArray = (array) => {
    if (array.length === 0) return 0;
    let soma = 0;
    for (let num of array) {
        soma += num;
    }
    return soma / array.length;
}

console.log(mediaArray([10, 20, 30])); // 20
console.log(mediaArray([5, 5, 5, 5])); // 5
console.log(mediaArray([2, 4, 6, 8])); // 5

// 19. Reverter um número.

let reverterNumero = (num) => {
    if (num === 0) return 0;
    const sinal = Math.sign(num);
    let n = Math.abs(Math.trunc(num));
    let rev = 0;
    while (n > 0) {
        rev = rev * 10 + (n % 10);
        n = Math.floor(n / 10);
    }
    return rev * sinal;
}

console.log(reverterNumero(12345)); // 54321
console.log(reverterNumero(-6789)); // -9876
console.log(reverterNumero(1000)); // 1

// 20. Remova todos os números negativos de um array.

let removerNegativos = (array) => {
    let novoArray = [];
    for (let i = 0; i < array.length; i++) {
        if (array[i] < 0) {
            novoArray.push(0);
        } else {
            novoArray.push(array[i]);
        }
    }
    return novoArray;
}
console.log(removerNegativos([1, -2, 3, -4])); // [1, 0, 3, 0]
console.log(removerNegativos([-1, -2, -3])); // [0, 0, 0]

// 21. Conte o número de vogais em uma string.

let contarVogais = (str) => {
    const vogais = 'aeiou';
    let count = 0;
    const chars = str.toLowerCase().split('');
    for (let char of chars) {
        if (vogais.includes(char)) {
            count++;
        }
    }
    return count;
}

console.log(contarVogais("Hello World")); // 3
console.log(contarVogais("JavaScript")); // 3
console.log(contarVogais("rhythm")); // 0

// 22. Encontre o segundo maior número em um array.

let segundoMaior = (array) => {
    if (array.length < 2) return undefined;
    let max = -Infinity;
    let segundoMax = -Infinity;
    for (let num of array) {
        if (num > max) {
            segundoMax = max;
            max = num;
        } else if (num > segundoMax && num < max) {
            segundoMax = num;
        }
    }
    if (segundoMax === -Infinity) segundoMax = max;
    return segundoMax;
}

console.log(segundoMaior([1, 2, 3, 4, 5])); // 4
console.log(segundoMaior([5, 5, 5])); // 5
console.log(segundoMaior([10, 20, 5, 30])); // 20
