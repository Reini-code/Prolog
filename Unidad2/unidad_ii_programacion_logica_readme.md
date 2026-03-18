# UNIDAD II. Programación Lógica

> Material teórico completo para abordar la unidad desde cero. Ideal para exposición, repositorio o guía de estudio.

---

# 2.1 Bases Teóricas de la Programación Lógica

La programación lógica es un paradigma declarativo basado en la lógica formal, principalmente en la **lógica de predicados de primer orden**. A diferencia de otros paradigmas, aquí no se especifica *cómo* resolver un problema, sino *qué se sabe* sobre él.

## Idea central

Un programa en programación lógica es un conjunto de:

- **Hechos (facts):** Información verdadera
- **Reglas (rules):** Relaciones lógicas
- **Consultas (queries):** Preguntas al sistema

El motor lógico (como Prolog) se encarga de:

- Unificar datos
- Aplicar inferencia
- Buscar soluciones automáticamente

## Ejemplo conceptual

"Juan es padre de María"

Se representa como:

```prolog
padre(juan, maria).
```

## Inferencia lógica

```prolog
hermano(X, Y) :- padre(Z, X), padre(Z, Y), X \= Y.
```

Esto significa:

"X es hermano de Y si ambos comparten el mismo padre y no son la misma persona"

## Unificación

Es el proceso de hacer coincidir variables con valores.

```prolog
padre(juan, X).
```

Resultado:

```
X = maria ;
X = pedro.
```

## Backtracking

Prolog busca soluciones explorando diferentes caminos.

- Si falla una opción → retrocede
- Intenta otra alternativa

---

# 2.2 Programación Lógica Pura

Se basa en mantener el modelo matemático sin efectos secundarios.

## Características

- No hay variables mutables
- No hay ciclos (for, while)
- Uso intensivo de recursión
- Sin control manual del flujo

## Ejemplo: miembro de lista

```prolog
miembro(X, [X|_]).
miembro(X, [_|T]) :- miembro(X, T).
```

## Ejemplo: longitud

```prolog
longitud([], 0).
longitud([_|T], N) :- longitud(T, N1), N is N1 + 1.
```

## Ejemplo: concatenación de listas

```prolog
concatenar([], L, L).
concatenar([H|T], L2, [H|R]) :- concatenar(T, L2, R).
```

---

# 2.3 Predicados Extra-Lógicos

Son herramientas prácticas que rompen la pureza lógica pero permiten interactuar con el sistema.

## Tipos

### 1. Entrada/Salida

```prolog
saludo :- write('Hola mundo'), nl.
```

### 2. Evaluación aritmética

```prolog
resultado(R) :- R is 5 + 3.
```

⚠️ Importante: `is` evalúa expresiones

### 3. Comparaciones

```prolog
mayor(X, Y) :- X > Y.
```

### 4. Manipulación de términos

```prolog
functor(Termino, Nombre, Aridad).
```

---

# 2.4 Corte y Negación por fallo

Permiten controlar el flujo de ejecución en Prolog.

## Corte (!)

Evita que Prolog siga buscando soluciones.

```prolog
max(X, Y, X) :- X >= Y, !.
max(_, Y, Y).
```

🔎 Sin corte → múltiples respuestas
🔎 Con corte → solo una

## Negación por fallo

```prolog
no_es_padre(X, Y) :- \+ padre(X, Y).
```

Significa:

"Si no se puede demostrar que X es padre de Y, entonces se considera falso"

⚠️ No es negación lógica pura

---

# 2.5 Programación Dinámica y Meta-Programación

## Programación dinámica

Permite modificar la base de conocimientos en tiempo de ejecución.

```prolog
:- dynamic padre/2.

agregar(X, Y) :- assert(padre(X, Y)).
eliminar(X, Y) :- retract(padre(X, Y)).
```

## Ejemplo práctico

```prolog
?- agregar(juan, luis).
?- padre(juan, luis).
```

## Meta-programación

Programas que manipulan otros programas.

```prolog
resolver(true).
resolver((A,B)) :- resolver(A), resolver(B).
resolver(A) :- call(A).
```

Esto permite crear:

- Intérpretes
- Sistemas expertos
- Motores de inferencia

---

# 2.6 Programación Lógica a Gran Escala

Cuando los sistemas crecen, es necesario estructurar mejor.

## Problemas

- Código difícil de mantener
- Lentitud en consultas
- Complejidad lógica

## Estrategias

### Modularización

```prolog
:- module(familia, [padre/2, madre/2]).
```

### Optimización

- Uso de corte
- Evitar reglas redundantes
- Orden correcto de predicados

### Uso de bases externas

- Archivos
- Bases de datos

### Buenas prácticas

- Nombres claros
- Documentación
- Separación de lógica

---

# Ejercicio Integrador

Desarrollar un sistema en Prolog que:

1. Defina relaciones familiares
2. Permita consultas complejas
3. Use recursión
4. Implemente corte
5. Permita agregar/eliminar datos

---

# Conclusión

La programación lógica es fundamental para áreas como:

- Inteligencia Artificial
- Sistemas expertos
- Procesamiento de lenguaje natural

Permite construir sistemas que razonan automáticamente a partir de conocimiento declarativo.

---

# Recomendación didáctica

Para abordar esta unidad desde cero:

1. Explicar lógica proposicional
2. Introducir Prolog gradualmente
3. Practicar con ejemplos simples
4. Escalar a problemas reales

---

> Este material está diseñado para ser base de exposición, repositorio académico o guía de estudio.

