const numeros = [1,2,3,4,5];

const cuadrados = numeros.map(function(n){
    return n * n;
});

console.log("Numeros originales:", numeros);
console.log("Cuadrados:", cuadrados);

// Funcion moderna
//const cuadrados = numeros.map(n => n*n);