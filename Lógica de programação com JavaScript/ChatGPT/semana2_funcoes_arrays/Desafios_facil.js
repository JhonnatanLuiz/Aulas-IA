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