{
let x = 10;

console.log(x);
//10//
}

{
let a = 20;
let b = 5;

console.log(a + b);
console.log(a - b);
console.log(a * b);
console.log(a / b);
console.log(a % b);
//25 15 100 4 0//
}

{
let num = -15;
console.log(-num);
//15//
}

{
count = 5;

console.log(count++);
console.log(count);
}

{
console.log(count--);
console.log(count);
//5 6 6 5//
}

{
let p = true;
let q = false;

console.log(p && q);
console.log(p || q);
console.log(!p);
console.log(!q);

//false true false true//

}

{
console.log(0 || "Hello");
console.log("" && "World");
console.log(null ?? "Default Value");
console.log(undefined ?? 42);

/*
Hello

Default Value
42*/
}

{
let resultado = 10 + 5 * 2 > 20 && !false;

console.log(resultado);

/*
false*/

}

{
console.log("5" - 2);/*subtraiu */
console.log("5" + 2);/* quando coloca o numero entre aspas ele junta os numeros*/
console.log(true + 1);/*true =1*/
console.log(false + 10);/* false = 0*/
    
}
{
let x = 5;
let y = 10;
let z = (x++ * --y) / 2 + (y % 3);
console.log(z);
/*5.9 / 2 + 9%3*/
}
