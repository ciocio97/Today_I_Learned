'use strict';

// Arrayπ

// 1. Declaration
const arr1 = new Array();
const arr2 = [1, 2];

// Index position
const fruits = ['π','π₯'];
console.log(fruits);
console.log(fruits.length);
console.log(fruits[0]);
console.log(fruits[1]);
console.log(fruits[2]);
console.log(fruits[fruits.length -1]);

console.clear()
// 3. Looping over an array
// print all fruits
// a. for
for ( let i = 0; i < fruits.length; i++ ){
    console.log(fruits[i]);
}

// b. for of ; valueμμ let λΆμ¬λΌ undefinedλΌμλ
for (let value of fruits) {
    console.log(value);
}

// c. forEach
// api μΈ λ ctrlν€ λλ¬μ μμ±,νΉμ± νμΈνλ©΄μ μ½λ©ν  κ².
fruits.forEach(function(fruit, index, array) {
    console.log(fruit, index, array); // λ³΄ν΅μ arrayλ λ°μμ€μ§ μμ
});

//κΉλ anonymous ν¨μλ => arrowλ₯Ό μΈ μ μλ΅λλ€ :)
fruits.forEach((fruit, index) => console.log(fruit, index));

// 4. Addition, deletion, copy
// push: add an item to the end λ€μμ μΆκ°
fruits.push('π₯','π');
console.log(fruits);

// pop: remove an item from the end λ€μμ μ κ±°
fruits.pop();
fruits.pop();
console.log(fruits);

// unshift: add an item to the beginning μμμ μΆκ°
fruits.unshift('π','π');
console.log(fruits);

// shift: remove an item from the beginning μμμ μ κ±°
fruits.shift();
fruits.shift();
console.log(fruits);

// note!! shift, unshift are slower than pop, push

// splice: remove an item by index position μ€κ°μ μ κ±°, μ€κ°μ μΆκ°
fruits.push('π','π','π');
console.log(fruits);
fruits.splice(2,2);
console.log(fruits);
fruits.splice(1,1,'π','π');
console.log(fruits);

// combine two arrays
const fruits2 = ['π₯­','π₯₯'];
const newFruits = fruits.concat(fruits2);
console.log(newFruits);

// 5. Searching
// indexOf: find the index
console.clear();
console.log(fruits);
console.log(fruits.indexOf('π')); // 0
console.log(fruits.indexOf('π')); // 2
console.log(fruits.indexOf('π')); // -1

// includes
console.log(fruits.includes('π')); // true
console.log(fruits.includes('π')); // false

// lastIndexOf
console.clear();
fruits.push('π');
console.log(fruits);
console.log(fruits.indexOf('π'));
console.log(fruits.lastIndexOf('π'));
