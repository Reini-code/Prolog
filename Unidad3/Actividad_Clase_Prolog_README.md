# 🧪 Actividad en Clase: Hechos y Reglas en Prolog

## 🎯 Objetivo

Aplicar los conceptos de **hechos, reglas y consultas** en Prolog mediante la construcción guiada de una base de conocimiento.

---

## 🧑‍🏫 Modalidad

- Trabajo guiado por el docente
- Participación activa de los estudiantes
- Desarrollo paso a paso

---

## ⏱️ Duración estimada

60 - 90 minutos

---

## 🧩 Parte 1: Creación de hechos (Nivel básico)

### 📌 Instrucciones

1. Crear un archivo llamado:

```
actividad_clase.pl
```

2. Escribir los siguientes hechos:

```prolog
gusta(juan, pizza).
gusta(maria, tacos).
gusta(luis, hamburguesa).
gusta(ana, pizza).

amigo(juan, maria).
amigo(maria, luis).
amigo(luis, ana).
```

---

### 🔍 Pruebas en consola

Ejecutar:

```prolog
?- gusta(juan, pizza).
?- gusta(ana, X).
?- gusta(X, pizza).
```

---

## 🧩 Parte 2: Crear reglas (Nivel intermedio)

### 📌 Instrucciones

Agregar la siguiente regla:

```prolog
le_gusta(X, Y) :- amigo(X, Z), gusta(Z, Y).
```

---

### 🔍 Pruebas

```prolog
?- le_gusta(juan, X).
?- le_gusta(maria, X).
```

---

## 🧩 Parte 3: Regla con restricción

### 📌 Instrucciones

Crear una regla para evitar resultados repetidos:

```prolog
amigos_diferentes(X, Y) :- amigo(X, Y), X \= Y.
```

---

### 🔍 Prueba

```prolog
?- amigos_diferentes(juan, maria).
```

---

## 🧩 Parte 4: Mini reto en clase 🚀

### 📌 Instrucciones

Crear una base de conocimiento sobre **materias y alumnos**:

#### Hechos sugeridos:

```prolog
estudia(ana, matematicas).
estudia(luis, programacion).
estudia(maria, matematicas).
estudia(juan, redes).
```

---

### 🧠 Reto

1. Crear una regla:

```prolog
companeros(X, Y) :- estudia(X, M), estudia(Y, M), X \= Y.
```

2. Probar:

```prolog
?- companeros(X, Y).
```

---

## 🧩 Parte 5: Reto final (si alcanza el tiempo)

Crear una relación de 2 niveles:

```prolog
conoce(X, Y) :- amigo(X, Y).
conoce(X, Y) :- amigo(X, Z), amigo(Z, Y).
```

---

### 🔍 Probar

```prolog
?- conoce(juan, X).
```

---

## 📌 Evidencia

Los alumnos deberán:

- Mostrar funcionamiento en consola
- Explicar al menos una regla
- Subir captura de pantalla o archivo `.pl`

---

## 🧠 Cierre de la actividad

Reflexionar:

- ¿Qué diferencia hay entre hecho y regla?
- ¿Cómo Prolog encuentra respuestas?
- ¿Qué pasa si agregamos más relaciones?

---

## 🚀 Extra (opcional)

Modificar el programa para incluir:

- Más personas
- Más relaciones
- Nuevas reglas

