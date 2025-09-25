// Exibe uma mensagem no console indicando a semana do projeto
console.log('Gemini Semana 1');

// Função para calcular operações matemáticas simples
// A função pede ao usuário dois números e uma operação (+, -, *, /) e mostra o resultado
function calculadoraSimples() { // Corrigido aqui
    // Solicita o primeiro número ao usuário e converte para um número de ponto flutuante
    let numero1 = parseFloat(prompt('Digite o primeiro número: '));
    // Solicita o segundo número ao usuário e converte para um número de ponto flutuante
    let numero2 = parseFloat(prompt('Digite o segundo número: '));
    // Solicita a operação desejada ao usuário
    let operacao = prompt('Digite a operação (+, -, *, /): ');

    let resultado; // Variável para armazenar o resultado da operação

    // Estrutura de controle para determinar qual operação realizar
    switch (operacao) {
        case '+': // Se a operação for adição
            resultado = soma(numero1, numero2); // Chama a função soma
            break; // Sai do switch
        case '-': // Se a operação for subtração
            resultado = subtracao(numero1, numero2); // Chama a função subtração
            break; // Sai do switch
        case '*': // Se a operação for multiplicação
            resultado = multiplicacao(numero1, numero2); // Chama a função multiplicação
            break; // Sai do switch
        case '/': // Se a operação for divisão
            resultado = divisao(numero1, numero2); // Chama a função divisao
            break; // Sai do switch
        default: // Se a operação não for válida
            alert('Operação inválida'); // Exibe um alerta
            return; // Sai da função
    }

    // Exibe o resultado da operação em um alerta
    alert('O resultado é: ' + resultado);
}

// Função para somar dois números
function soma(a, b) {
    return a + b; // Retorna a soma de a e b
}

// Função para subtrair dois números
function subtracao(a, b) {
    return a - b; // Retorna a subtração de a e b
}

// Função para multiplicar dois números
function multiplicacao(a, b) {
    return a * b; // Retorna a multiplicação de a e b
}

// Função para dividir dois números
function divisao(a, b) {
    // Verifica se o divisor é zero
    if (b === 0) {
        alert('Divisão por zero não é permitida'); // Exibe um alerta se for zero
        return; // Sai da função
    }
    return a / b; // Retorna a divisão de a por b
}

// Chama a função calculadoraSimples para iniciar o programa
calculadoraSimples(); // Corrigido aqui