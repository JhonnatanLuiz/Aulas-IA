// Semana1.js (refatorado para execução no navegador)
// Exercício 1: Variáveis, Operadores e Template Strings
// Exercício 2: Condicionais (if/else) e Operador Ternário

// Utilidades DOM
const $ = (sel) => document.querySelector(sel);
const saidaEl = () => $('#saida');

function appendLinha(texto) {
    console.log(texto); // agora também no console
    const el = saidaEl();
    if (!el) return;
    el.textContent += (el.textContent ? '\n' : '') + texto;
}

function limparSaida() {
    const el = saidaEl();
    if (el) el.textContent = '';
}

// Exercício 1
function exercicio1() {
    limparSaida();
    const nome = $('#nome').value.trim() || 'Sem nome';
    const idadeStr = $('#idade').value.trim();
    const cidade = $('#cidade').value.trim() || 'Sem cidade';
    const idade = Number(idadeStr);

    if (!Number.isFinite(idade) || idade < 0) {
        appendLinha('Idade inválida. Digite um número não negativo.');
        return;
    }
    appendLinha(`Olá, meu nome é ${nome}, tenho ${idade} anos e moro em ${cidade}.`);
    appendLinha(`Daqui a 10 anos, terei ${idade + 10} anos.`);
}

// Exercício 2 (if/else)
function classificarIfElse() {
    const aluno = $('#aluno').value.trim() || 'Aluno';
    const notaStr = $('#nota').value.trim();
    const nota = Number(notaStr);

    if (!Number.isFinite(nota) || nota < 0 || nota > 10) {
        appendLinha('Nota inválida. Deve ser entre 0 e 10.');
        return;
    }

    if (nota >= 7) {
        appendLinha(`${aluno} está aprovado (nota ${nota}).`);
    } else if (nota >= 5) {
        appendLinha(`${aluno} está em recuperação (nota ${nota}).`);
    } else {
        appendLinha(`${aluno} está reprovado (nota ${nota}).`);
    }
}

// Exercício 2 (ternário)
function classificarTernario() {
    const aluno = $('#aluno').value.trim() || 'Aluno';
    const notaStr = $('#nota').value.trim();
    const nota = Number(notaStr);

    if (!Number.isFinite(nota) || nota < 0 || nota > 10) {
        appendLinha('Nota inválida. Deve ser entre 0 e 10.');
        return;
    }

    const status = (nota >= 7) ? 'aprovado' : (nota >= 5 ? 'em recuperação' : 'reprovado');
    appendLinha(`${aluno} está ${status} (nota ${nota}).`);
}

function inicializar() {
    const btnEx1 = $('#btnEx1');
    const btnIfElse = $('#btnIfElse');
    const btnTernario = $('#btnTernario');
    const btnLimpar = $('#limpar');
    const btnTabuada = $('#btnTabuada');

    btnEx1?.addEventListener('click', exercicio1);
    btnIfElse?.addEventListener('click', classificarIfElse);
    btnTernario?.addEventListener('click', classificarTernario);
    btnLimpar?.addEventListener('click', limparSaida);
    btnTabuada?.addEventListener('click', tabuada);
}

document.addEventListener('DOMContentLoaded', inicializar);

function tabuada() {
    limparSaida();

    const numInput = $('#numero');
    if (!numInput) {
        appendLinha('Elemento #numero não encontrado no HTML.');
        return;
    }

    const num = Number(numInput.value.trim());
    if (!Number.isFinite(num) || num <= 0) {
        appendLinha('Número inválido. Digite um número positivo.');
        return;
    }

    // Versão com while
    /*let i = 1;
    while (i <= 10) {
        appendLinha(`${num} x ${i} = ${num * i}`);
        i++;
    }*/

    // (Opcional) Versão for (comente a de cima e use esta se preferir):
    
    for (let j = 1; j <= 10; j++) {
        appendLinha(`${num} x ${j} = ${num * j}`);
    }
    
}

// Escolher UM número aleatório entre 1 e 10 (versão simples)
let numeroAleatorio = Math.floor(Math.random() * 10) + 1;
console.log('Número aleatório:', numeroAleatorio);

// Lista de nomes

let nomes = [];
for (let i = 0; i < 5; i++) {
    let nome = prompt(`Digite o nome ${i + 1}:`);
    nomes.push(nome);
}

console.log("Lista completa:", nomes);
console.log("Primeiro nome:", nomes[0]);
console.log("Último nome:", nomes[nomes.length - 1]);
console.log("Quantidade de nomes digitados:", nomes.length);

// Objeto simples carro

const carro = {
    marca: 'Toyota',
    modelo: 'Corolla',
    ano: 2020,
    cor: 'Azul'
};

console.log(`Tenho um carro ${carro.marca} ${carro.modelo}, ano ${carro.ano}, de cor ${carro.cor}.`);

// Mini Projeto: Calculadora Simples (console)
function somar(a, b) { return a + b; }
function subtrair(a, b) { return a - b; }
function multiplicar(a, b) { return a * b; }
function dividir(a, b) {
    if (b === 0) return NaN;
    return a / b;
}

function lerNumero(msg) {
    const entrada = prompt(msg);
    if (entrada === null) return null;
    const n = Number(entrada.replace(',', '.'));
    return Number.isFinite(n) ? n : NaN;
}

function calculadora() {
    while (true) {
        const n1 = lerNumero('Digite o primeiro número (ou Cancelar para sair):');
        if (n1 === null) break;
        if (Number.isNaN(n1)) { alert('Número inválido.'); continue; }

        const n2 = lerNumero('Digite o segundo número:');
        if (n2 === null) break;
        if (Number.isNaN(n2)) { alert('Número inválido.'); continue; }

        const op = prompt('Operação (+ - * /):');
        if (op === null) break;

        let resultado;
        switch (op) {
            case '+': resultado = somar(n1, n2); break;
            case '-': resultado = subtrair(n1, n2); break;
            case '*': resultado = multiplicar(n1, n2); break;
            case '/': resultado = dividir(n1, n2); break;
            default:
                alert('Operação inválida.');
                continue;
        }

        alert(`${n1} ${op} ${n2} = ${resultado}`);
        const cont = prompt('Continuar? (sim/não)');
        if (!cont || cont.toLowerCase().startsWith('n')) break;
    }
    console.log('Calculadora encerrada.');
}

// Para iniciar automaticamente, descomente a linha abaixo:
// calculadora();






