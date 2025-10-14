//Desafios Médio Nível 3 - Estilo Edabit - Lógicas e Funções Intermediárias

// 1. Verificar se uma string é um palíndromo (lê-se igual de trás para frente).

function ehPalindromo(str) {
    if (str == null) return false;
    const limpo = String(str).replace(/[^a-zA-Z0-9]/g, '').toLowerCase();
    const invertido = limpo.split('').reverse().join('');
    return limpo === invertido;
}

console.log(ehPalindromo("Anna")); // true
console.log(ehPalindromo("A man, a plan, a canal: Panama")); // true
console.log(ehPalindromo("racecar")); // true
console.log(ehPalindromo("hello")); // false

// 2. Substituir todas as ocorrências de uma palavra em uma frase por outra palavra.

function substituirPalavra(frase, palavraAntiga, palavraNova) {
    const re = new RegExp(`\\b${palavraAntiga}\\b`, 'g');
    return frase.replaceAll(re, palavraNova);
}

console.log(substituirPalavra("Eu gosto de JavaScript", "JavaScript", "Python")); // "Eu gosto de Python"
console.log(substituirPalavra("banana, banana, maçã", "banana", "laranja")); // "laranja, laranja, maçã"


// 3. Contar ocorrências de um valor em um array.

const contarOcorrencias = (arr, valor) => {
    return arr.filter(x => x === valor).length;
}

console.log(contarOcorrencias([1, 2, 3, 1, 4, 1], 1)); // 3
console.log(contarOcorrencias(['a', 'b', 'a'], 'a')); // 2

// 4. Verificar se duas strings são anagramas.

function ehAnagrama(str1, str2) {
    const formatado = str => str.replace(/[^a-zA-Z0-9]/g, '').toLowerCase().split('').sort().join('');
    return formatado(str1) === formatado(str2);
}

console.log(ehAnagrama("amor", "roma")); // true
console.log(ehAnagrama("listen", "silent")); // true
console.log(ehAnagrama("Casa", "saco")); // true

// 5. Somar números ímpares (recebe um array e usa filter + reduce)
function somaImpares(arr) {
  if (!Array.isArray(arr)) return 0;
  return arr
    .filter(n => Number.isFinite(n) && Math.abs(n) % 2 === 1)
    .reduce((acc, cur) => acc + cur, 0);
}

console.log(somaImpares([1, 2, 3, 4, 5])); // 9
console.log(somaImpares([10, 11, 12, 13])); // 24

// 6. Nome do dia da semana

const diaDasSemana = ["Domingo", "Segunda", "Terça", "Quarta", "Quinta", "Sexta", "Sábado"];
function nomeDoDia(numero) {
  if (!Number.isInteger(numero) || numero < 1 || numero > 7) return "Número inválido";
  return diaDasSemana[numero - 1];
}

// Testes conforme enunciado
console.log(nomeDoDia(1)); // "Domingo"
console.log(nomeDoDia(5)); // "Quinta"
console.log(nomeDoDia(8)); // "Número inválido"

