# UNIDAD II: Instalación y Entorno de Trabajo (Prolog)

> Guía completa para iniciar desde cero en Prolog usando SWI-Prolog.

---

# 1. Instalación de SWI-Prolog

SWI-Prolog es un entorno de desarrollo de Prolog ampliamente utilizado en educación e investigación.

## Instalación en Windows

1. Ir a: https://www.swi-prolog.org
2. Descargar el instalador para Windows
3. Ejecutar el instalador
4. Activar la opción:
   - "Agregar SWI-Prolog al PATH"

## Instalación en Linux (Debian/Ubuntu)

```bash
sudo apt update
sudo apt install swi-prolog
```

## Instalación en macOS (Homebrew)

```bash
brew install swi-prolog
```

---

# 2. Uso de la Consola Interactiva

Para iniciar Prolog:

```bash
swipl
```

Aparecerá el prompt:

```prolog
?-
```

Este símbolo indica que el sistema espera una consulta.

## Ejemplos básicos

```prolog
?- write('Hola, mundo!'), nl.
```

Resultado:

```
Hola, mundo!
true.
```

```prolog
?- X is 3 + 5.
```

Resultado:

```
X = 8.
```

## Salir de Prolog

```prolog
?- halt.
```

---

# 3. Estructura de un Archivo .pl

Un archivo Prolog contiene:

- Hechos
- Reglas
- Consultas (comentadas)

## Ejemplo: familia.pl

```prolog
% Hechos
padre(juan, maria).
padre(juan, pedro).
madre(ana, maria).
madre(ana, pedro).

% Reglas
hermano(X, Y) :- padre(P, X), padre(P, Y), madre(M, X), madre(M, Y), X \= Y.

% Consulta
% ?- hermano(pedro, maria).
```

## Cargar archivo

```prolog
?- consult('familia.pl').
```

O

```prolog
?- ['familia.pl'].
```

## Consultar

```prolog
?- padre(juan, Hijo).
```

Resultado:

```
Hijo = maria ;
Hijo = pedro.
```

---

# 4. Ejemplos Prácticos

## Ejemplo 1: Animales

```prolog
mamifero(leon).
mamifero(ballena).
ave(paloma).
ave(aguila).
pez(tiburon).

vuela(paloma).
vuela(aguila).

animal(X) :- mamifero(X).
animal(X) :- ave(X).
animal(X) :- pez(X).
```

Consultas:

```prolog
?- animal(ballena).
?- vuela(aguila).
```

---

## Ejemplo 2: Escuela

```prolog
estudiante(ana).
estudiante(juan).

estudia(ana, matematicas).
estudia(ana, fisica).
estudia(juan, matematicas).
estudia(juan, quimica).

comparten_materia(E1, E2, M) :- estudia(E1, M), estudia(E2, M), E1 \= E2.
```

Consultas:

```prolog
?- estudia(ana, X).
?- comparten_materia(ana, juan, M).
```

---

## Ejemplo 3: Operaciones

```prolog
suma(A, B, R) :- R is A + B.
resta(A, B, R) :- R is A - B.
multiplica(A, B, R) :- R is A * B.
divide(A, B, R) :- B =\= 0, R is A / B.
```

Consultas:

```prolog
?- suma(3,4,R).
?- divide(10,2,R).
```

---

## Ejemplo 4: Colores

```prolog
color(rojo).
color(azul).
color(amarillo).

mezcla(rojo, azul, morado).
mezcla(azul, amarillo, verde).
mezcla(rojo, amarillo, naranja).
```

Consultas:

```prolog
?- mezcla(rojo, azul, X).
?- mezcla(X, amarillo, naranja).
```

---

## Ejemplo 5: Edades

```prolog
edad(ana, 25).
edad(luis, 30).
edad(maria, 25).

mayor_que(X, Y) :- edad(X, EX), edad(Y, EY), EX > EY.
misma_edad(X, Y) :- edad(X, E), edad(Y, E), X \= Y.
```

Consultas:

```prolog
?- mayor_que(luis, ana).
?- misma_edad(ana, maria).
```

---

# Conclusión

Este documento introduce:

- Instalación de Prolog
- Uso de consola
- Creación de archivos
- Ejemplos básicos

Es la base para comenzar con programación lógica desde cero.

---

> Recomendación: practicar cada ejemplo directamente en SWI-Prolog.

