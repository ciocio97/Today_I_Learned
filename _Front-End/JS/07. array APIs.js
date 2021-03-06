// Q1. make a string out of an array
{
    const fruits = ['apple', 'banana', 'orange'];
    const result = fruits.join(',');  // join ν¨μ 
    console.log(result);              // apple, banana, orange
}

// Q2. make an array out of string
{
    const fruits = 'π,π₯,π,π';
    const result = fruits.split(','); // split ν¨μ 
    console.log(result);              // ["π","π₯","π","π"]
}

// Q3. make this array look like this: [5, 4, 3, 2, 1]
{
    const array = [1, 2, 3, 4, 5];
    const result = array.reverse();  // reverse ν¨μ = T[]
    console.log(result);             // [5, 4, 3, 2, 1]
    console.log(array);              // [5, 4, 3, 2, 1]
}
 
// Q4. make new array without the first two elements
{
    const array = [1, 2, 3, 4, 5];
    const result = array.splice(0,2);// splice ν¨μ = T[]
    console.log(result);             // [1, 2]
    console.log(array);              // [3, 4, 5] λ°°μ΄ μμ²΄λ₯Ό λ³κ²½

    const result1 = array.slice(2,5);// slice ν¨μ 
    console.log(result1);            // [3, 4, 5] λ°°μ΄μμ μνλ λΆλΆλ§ return
}

//
class Student {
    constructor(name, age, enrolled, score) {
      this.name = name;
      this.age = age;
      this.enrolled = enrolled;
      this.score = score;
    }
}

const students = [
    new Student('A', 29, true, 45),
    new Student('B', 28, false, 80),
    new Student('C', 30, true, 90),
    new Student('D', 40, false, 66),
    new Student('E', 18, true, 88),
];

// Q5. find a student with the score 90
{
    const result = students.find(function (student, index) { // find ν¨μ = callback ν¨μ
        return student.score === 90;
    });
    console.log(result);
}
{
    const result = students.find((student) => student.score === 90); // μμκ² ν μ€λ‘ μ λ¦¬ κ°λ₯
    console.log(result);                                             
}

// Q6. make an array of enrolled students
{
    const result = students.filter((student) => student.enrolled === true); // filter ν¨μ = callback ν¨μ
    console.log(result);
}

// Q7. make an array containing only the students' scores
// result should be: [45, 80, 90, 66, 88]
{
    const result = students.map((student) => student.score); // map ν¨μ
    console.log(result);  // λ°°μ΄ μμ μλ μμλ€μ λ€λ₯Έ ν¨μλ₯Ό λμμμΌ λ€λ₯Έ data λ§λ€κ³  μΆμ λ
                          // callback ν¨μλ‘ μ λ¬λλ μΈμλ μ΅λν μ΄ν΄νκΈ° μ½κ² μ°μΈμ !!
}                         // μλ‘μ΄ λ°°μ΄ return T[]

// Q8. check if there is a student with the score lower than 50
{
    const result = students.some((student) => student.score < 50); // some ν¨μ (μΌλΆ)
    console.log(result);
}
{
    const result = !students.every((student) => student.score >= 50); //every ν¨μ (λͺ¨λ)
    console.log(result);
}

// Q9. compute students' average score
{
    const result = students.reduce((prev, curr) => {  // reduce ν¨μ
        console.log('---------');                     // reduceRight ν¨μ (κ±°κΎΈλ‘)
        console.log(prev);                            // λ°°μ΄ νλνλ λλ©΄μ κ°μ λμ ν  λ μ°λ κ²
        console.log(curr);
        return prev + curr.score;
    }, 0);
    console.log(result / students.length);
}
{
    const result = students.reduce((prev, curr) => prev + curr.score, 0);
    console.log(result / students.length);
}

// Q10. make a string containing all the scores
// result should be: '45, 80, 90, 66, 88'
{
    const result = students.map((student) => student.score).join();
    console.log(result);
}

// Q11. Bonus! do Q10 sorted in ascending order
// result should be: '45, 66, 80, 88, 90'
{
    const result = students
        .map((student) => student.score)
        .sort((a, b) => a - b)
        .join();
    console.log(result);
}