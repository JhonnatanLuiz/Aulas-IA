function reverterArray(arr) { // Recebe um array como parâmetro
    const arrRevertido = []; // Cria um novo array vazio para armazenar os elementos revertidos
    for (let i = arr.length - 1; i >= 0; i--) { // Loop de trás para frente
        arrRevertido.push(arr[i]); // Adiciona o elemento atual ao novo array
    }
    return arrRevertido; // Retorna o array revertido
}
console.log(reverterArray([1, 2, 3, 4, 5])); // Exemplo de uso: [5, 4, 3, 2, 1]