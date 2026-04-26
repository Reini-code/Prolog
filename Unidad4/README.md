# Unidad 4: Variables y Consultas en Prolog

## Objetivo de la Unidad
Comprender el uso de variables, consultas, inferencia lógica y backtracking en Prolog.

---

## 1. Variables en Prolog

Las variables comienzan con MAYÚSCULA.

Ejemplos:
```
X
Persona
Edad
Resultado
```

Ejemplo:
```
le_gusta(juan, pizza).
le_gusta(maria, sushi).
```

Consulta:
```
?- le_gusta(juan, X).
```

Resultado:
```
X = pizza.
```

---

## 2. Consultas con Variables

Archivo: variables_basico.pl

Ejemplo:
```
animal(perro).
animal(gato).
animal(conejo).
```

Consulta:
```
?- animal(X).
```

Prolog buscará todos los valores posibles.

---

## 3. Inferencia en Prolog

Archivo: inferencia.pl

Reglas:
```
padre(juan, ana).
padre(juan, pedro).
hombre(juan).

es_padre(X) :- padre(X,_).
```

Consulta:
```
?- es_padre(X).
```

---

## 4. Backtracking

Archivo: backtracking.pl

Prolog intenta soluciones alternativas automáticamente.

Ejemplo:
```
color(rojo).
color(verde).
color(azul).
```

Consulta:
```
?- color(X).
```

Presiona `;` para más resultados.

---

## 5. Árbol Genealógico

Archivo: familia.pl

Contiene hechos y reglas familiares.

---

## Actividad Autónoma (Evidencia)

### Actividad 1
1. Ejecutar `variables_basico.pl`
2. Realizar consultas usando variables
3. Capturar pantalla de resultados

### Actividad 2
1. Ejecutar `familia.pl`
2. Consultar:
```
?- padre(X,Y).
?- abuelo(X,Y).
```

### Actividad 3
1. Ejecutar `inferencia.pl`
2. Explicar cómo Prolog deduce resultados

### Actividad 4
1. Ejecutar `backtracking.pl`
2. Mostrar uso del `;` para múltiples respuestas

### Evidencia a entregar
- Capturas de pantalla
- Archivo con consultas usadas
- Explicación breve del backtracking

---

## Cómo ejecutar
1. Instalar SWI-Prolog
2. Abrir consola
3. Cargar archivo:
```
?- consult(nombre_archivo).
```

---

Fin de la Unidad 4.
