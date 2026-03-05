# Programación Lógica y Funcional
## Unidad I – Introducción

---

# 1.1 Conceptos Básicos y Comparación de Paradigmas

## ¿Qué es un paradigma de programación?

Un **paradigma de programación** es una forma de pensar y estructurar la solución de un problema mediante código. Cada paradigma propone una filosofía diferente sobre cómo deben organizarse los programas.

En otras palabras, un paradigma define **cómo escribir programas y cómo resolver problemas con ellos**.

### Principales paradigmas

| Paradigma | Idea principal |
|---|---|
| Imperativo | Indicar paso a paso qué debe hacer la computadora |
| Orientado a Objetos | Modelar el problema mediante objetos |
| Funcional | Resolver problemas mediante funciones matemáticas |
| Lógico | Definir reglas y relaciones para obtener conclusiones |

---

# Paradigma Imperativo

En este paradigma se describe **cómo realizar una tarea paso a paso**. La computadora ejecuta instrucciones en secuencia.

### Ejemplo en C++

```cpp
#include <iostream>
using namespace std;

int main() {

    int suma = 0;

    for(int i = 1; i <= 5; i++){
        suma = suma + i;
    }

    cout << "La suma es: " << suma;

}
```

Aquí el programa indica exactamente:

1. Crear una variable
2. Repetir un ciclo
3. Sumar números
4. Mostrar el resultado

---

# Paradigma Orientado a Objetos

Este paradigma busca **representar entidades del mundo real mediante objetos**.

Un objeto contiene:

- Atributos (datos)
- Métodos (acciones)

### Ejemplo en Java

```java
class Persona {

    String nombre;
    int edad;

    void saludar(){
        System.out.println("Hola, soy " + nombre);
    }
}
```

Uso del objeto:

```java
Persona p = new Persona();
p.nombre = "Carlos";
p.edad = 20;
p.saludar();
```

---

# Paradigma Funcional

La programación funcional está inspirada en **las matemáticas**. Los programas se construyen mediante funciones que transforman datos.

Características:

- Uso intensivo de funciones
- Datos inmutables
- Evita modificar variables
- Las funciones pueden enviarse como parámetros

### Ejemplo en JavaScript

```javascript
function sumarUno(x){
    return x + 1;
}

console.log(sumarUno(5));
```

Resultado:

```
6
```

### Uso de funciones sobre colecciones

```javascript
const numeros = [1,2,3,4];

const cuadrados = numeros.map(x => x*x);

console.log(cuadrados);
```

Resultado:

```
[1,4,9,16]
```

---

# Paradigma Lógico

En la programación lógica no se indica el procedimiento para resolver un problema, sino **las reglas que describen el problema**.

El sistema se encarga de encontrar la solución.

El lenguaje más representativo es **Prolog**.

### Ejemplo

```prolog
padre(juan, pedro).
padre(pedro, maria).
```

Regla:

```prolog
abuelo(X,Y) :- padre(X,Z), padre(Z,Y).
```

Consulta:

```
?- abuelo(juan,maria).
```

Resultado:

```
true
```

---

# Comparación de Paradigmas

| Característica | Imperativo | Orientado a Objetos | Funcional | Lógico |
|---|---|---|---|---|
| Enfoque | Procedimiento | Objetos | Funciones | Reglas |
| Variables | Cambian constantemente | Cambian dentro del objeto | Evita cambios | No se usan tradicionalmente |
| Ejemplo de lenguaje | C, C++ | Java, C# | Haskell, Lisp | Prolog |

---

# 1.2 Evolución Histórica de la Programación

La programación ha evolucionado desde lenguajes muy cercanos al hardware hasta paradigmas más abstractos.

---

## Lenguaje Máquina (1940)

Es el lenguaje que entiende directamente el procesador.

Ejemplo:

```
10110000 01100001
```

Problemas:

- Muy difícil de leer
- Difícil de programar
- Difícil de mantener

---

## Lenguaje Ensamblador (1950)

Representa las instrucciones máquina con palabras más comprensibles.

Ejemplo:

```
MOV AX, 5
ADD AX, 3
```

---

## Lenguajes de Alto Nivel (1960)

Surgen lenguajes más cercanos al lenguaje humano.

Ejemplos:

- FORTRAN
- COBOL
- BASIC

Ejemplo:

```basic
PRINT "Hola Mundo"
```

---

## Programación Estructurada (1970)

Introduce estructuras de control como:

- if
- for
- while

Ejemplo:

```c
if (edad >= 18){
    printf("Mayor de edad");
}
```

---

## Programación Orientada a Objetos (1980)

Organiza el software en objetos.

Lenguajes importantes:

- C++
- Java
- C#

Ejemplo:

```java
class Auto{
    String color;
}
```

---

## Programación Funcional Moderna

Se enfoca en funciones matemáticas y procesamiento de datos.

Lenguajes:

- Haskell
- Scala
- Elixir

Ejemplo en Python:

```python
numeros = [1,2,3,4]

cuadrados = list(map(lambda x: x*x, numeros))

print(cuadrados)
```

---

## Programación Lógica

Se basa en hechos y reglas para obtener conclusiones.

Lenguaje representativo:

- Prolog

Aplicaciones:

- Inteligencia artificial
- Sistemas expertos
- Procesamiento de lenguaje natural

---

# 1.3 Programación Funcional

## Definición

La programación funcional es un paradigma basado en **funciones matemáticas**, donde los programas se construyen mediante la evaluación de funciones y se evita modificar los datos.

---

## Características

### Inmutabilidad

Los datos no cambian después de ser creados.

Ejemplo:

```python
x = 5
y = x + 2
```

---

### Funciones puras

Una función pura siempre devuelve el mismo resultado para los mismos parámetros.

```javascript
function cuadrado(x){
    return x * x;
}
```

---

### Funciones como parámetros

Las funciones pueden enviarse como argumentos.

```javascript
function operar(a,b,funcion){
    return funcion(a,b);
}

function suma(x,y){
    return x+y;
}

console.log(operar(5,3,suma));
```

---

# Programación Lógica

## Definición

La programación lógica es un paradigma basado en la lógica matemática donde los programas se construyen mediante hechos y reglas.

---

## Componentes

### Hechos

```prolog
gato(michi).
perro(firulais).
```

---

### Reglas

```prolog
animal(X) :- gato(X).
animal(X) :- perro(X).
```

---

### Consultas

```
?- animal(michi).
```

Resultado:

```
true
```

---

# Ejemplo completo en Prolog

```prolog
padre(juan, pedro).
padre(pedro, maria).

abuelo(X,Y) :- padre(X,Z), padre(Z,Y).
```

Consulta:

```
?- abuelo(juan,maria).
```

Resultado:

```
true
```

---

# Diferencia entre Programación Funcional y Lógica

| Característica | Funcional | Lógica |
|---|---|---|
| Base | Funciones matemáticas | Lógica matemática |
| Programa | Conjunto de funciones | Conjunto de reglas |
| Ejecución | Evaluación de funciones | Inferencia |
| Lenguajes | Haskell, Lisp | Prolog |

---

# Conclusión

La programación funcional y la programación lógica representan dos formas diferentes de resolver problemas en programación.

Mientras que:

- La **programación funcional** se centra en funciones y transformación de datos.
- La **programación lógica** se centra en reglas y deducción automática.

Ambos paradigmas son importantes en áreas modernas como:

- Inteligencia Artificial
- Ciencia de Datos
- Sistemas distribuidos
- Procesamiento de información compleja

