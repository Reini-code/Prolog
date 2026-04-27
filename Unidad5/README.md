# Unidad 5: Listas y Estructuras en Prolog

## Objetivo
Aprender a utilizar listas y estructuras compuestas en Prolog, comprender su sintaxis,
manipulación y aplicación en problemas reales.

---

# 1. Listas en Prolog

Una lista es una colección ordenada de elementos.

Ejemplos:
```
[]
[1,2,3]
[a,b,c]
[juan,23,estudiante]
```

## Sintaxis Interna
```
[H|T]
```
H = cabeza
T = cola

Ejemplo:
```
[1,2,3] = [1|[2,3]]
```

---

# 2. Operaciones Básicas

## Cabeza
```
cabeza([H|_], H).
```

Consulta:
```
?- cabeza([a,b,c], X).
```

## Cola
```
cola([_|T], T).
```

Consulta:
```
?- cola([a,b,c], X).
```

## Pertenencia
```
pertenece(X,[X|_]).
pertenece(X,[_|T]) :- pertenece(X,T).
```

Consulta:
```
?- pertenece(b,[a,b,c]).
```

---

# 3. Operaciones Avanzadas

## Longitud
```
longitud([],0).
longitud([_|T],N):-
    longitud(T,N1),
    N is N1 + 1.
```

## Concatenar
```
concat([],L,L).
concat([H|T],L,[H|R]):-
    concat(T,L,R).
```

---

# 4. Estructuras Compuestas

Ejemplo:
```
persona(nombre,edad,carrera).
```

Hechos:
```
persona(juan,21,sistemas).
persona(ana,22,software).
```

Consulta:
```
?- persona(N,E,C).
```

---

# 5. Ejemplos Incluidos

- listas.pl
- estructuras.pl
- actividad.pl

---

# 6. Actividad Sin Docente (Evidencia)

El alumno deberá:

1. Ejecutar cada archivo .pl.
2. Realizar capturas de pantalla de:
   - consultas exitosas
   - resultados incorrectos corregidos
3. Crear su propio programa:
   - lista de materias
   - estructura alumno(nombre,edad,carrera)

## Evidencias a entregar

- Capturas ejecutando consultas
- Código modificado
- Explicación breve

---

¡Fin de la Unidad 5!
