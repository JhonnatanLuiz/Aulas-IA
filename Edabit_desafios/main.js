// calculando o cubo de um número

function cubes(a) {
    return Math.pow(a, 3);
}
// ou return a * a * a;
console.log(cubes(3));
console.log(cubes(5));
console.log(cubes(10));

// Convertendo minutos em segundos

function convert (minutes) {
    return minutes * 60;
}
console.log(convert(5));
console.log(convert(3));
console.log(convert(2));

//Área de um triângulo

function triArea(base, height) {
    return (base * height) / 2;
}

console.log(triArea(3, 2));
console.log(triArea(7, 4));
console.log(triArea(10, 10));

// Perímetro de um retângulo

function findPerimeter(length, width) {
    return 2 * (length + width);
}
console.log(findPerimeter(6, 7));
console.log(findPerimeter(20, 10));
console.log(findPerimeter(2, 9));

// Resto da divisão

 function remainder(x,y) {
    return x % y;
 }
    console.log(remainder(1, 3));
    console.log(remainder(3, 4));
    console.log(remainder(-9, 45));
    console.log(remainder(5, 5));

// Fim do arquivo