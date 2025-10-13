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