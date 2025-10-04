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

    function addition(num) {
        return num + 1;
    }
    console.log(addition(0));
    console.log(addition(9));
    console.log(addition(-3));

    function points(twoPointers, threePointers) {
        return (twoPointers * 2) + (threePointers * 3);
    }
    console.log(points(1, 1));
    console.log(points(7, 5));
    console.log(points(38, 8));

    function circuitPower(voltage, current) {
        return voltage * current;
    }
    console.log(circuitPower(230, 10));
    console.log(circuitPower(110, 3));
    console.log(circuitPower(480, 20));

    function nameString(name) {
        var b = "Edabit";
        var result = name + b;
        return result;
    }
    console.log(nameString('Mubashir'));
    console.log(nameString('Matt'));
    console.log(nameString('javaScript'));

    function squared(b) {
        return b * b;
    }
    console.log(squared(5));
    console.log(squared(9));
    console.log(squared(100));

    // Criando um loop infinito

    function printArray(number) {
        var newArray = [];
        for (var i = 1; i <= number;) {
            newArray.push(i);
            i++;
        }

        return newArray;
    }

    console.log(printArray(1));
    console.log(printArray(3));
    console.log(printArray(6));

    // getFirstValue

    function getFirstValue(arr) {
        return arr[0];
    }
    getFirstValue([1, 2, 3]);
    getFirstValue([80, 5, 100]);
    getFirstValue([-500, 0, 50]);
    console.log(getFirstValue([1, 2, 3]));
    console.log(getFirstValue([80, 5, 100]));
    console.log(getFirstValue([-500, 0, 50]));

    // Buggy Code (Part 7)

    function swap(a, b) {
        return [b, a];
    }
    console.log(swap(100, 200));
    console.log(swap(44, 33));
    console.log(swap(21, 12));

    //

    function animals (chickens, cows, pigs) {
        return (chickens * 2) + (cows * 4) + (pigs * 4);
    }
    console.log(animals(2, 3, 5));
    console.log(animals(1, 2, 3));
    console.log(animals(5, 2, 8));