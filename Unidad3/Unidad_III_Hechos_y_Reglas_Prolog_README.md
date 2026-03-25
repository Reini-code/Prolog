# 📘 UNIDAD III: Hechos y Reglas (Prolog)

## 🎯 Objetivo de la unidad

Comprender la forma de representar conocimientos mediante hechos y reglas en Prolog, utilizando la sintaxis adecuada para crear bases de conocimiento simples, definir relaciones y realizar consultas básicas.

---

## 📌 1. Definición de hechos

En Prolog, un **hecho** representa información que se considera verdadera dentro del dominio del problema.

Se expresa mediante un predicado que relaciona uno o más elementos.

### 🔹 Sintaxis básica

```prolog
predicado(argumento1, argumento2, ..., argumentoN).
```

### 🔹 Ejemplo

```prolog
gusta(juan, pizza).
gusta(maria, pasta).
amigo(juan, maria).
```

### 🧠 Interpretación

- A Juan le gusta la pizza.
- A María le gusta la pasta.
- Juan y María son amigos.

---

## 📌 2. Definición de reglas

Las **reglas** permiten inferir nuevos hechos a partir de otros hechos o reglas.

### 🔹 Sintaxis básica

```prolog
cabeza :- cuerpo.
```

### 🧠 Interpretación

> La cabeza es verdadera **si** el cuerpo es verdadero.

- **Cabeza:** lo que queremos demostrar  
- **Cuerpo:** condiciones necesarias (separadas por comas → AND lógico)

---

### 🔹 Ejemplo

```prolog
le_gusta(X, Y) :- amigo(X, Z), gusta(Z, Y).
```

### 🧠 Interpretación

"A X le gusta Y si X es amigo de Z y a Z le gusta Y."

---

### 🔹 Ejemplo completo

```prolog
% Hechos
gusta(juan, pizza).
gusta(maria, pasta).
amigo(pedro, juan).
amigo(pedro, maria).

% Regla
le_gusta(pedro, X) :- amigo(pedro, Z), gusta(Z, X).
```

### 🔍 Consulta

```prolog
?- le_gusta(pedro, Comida).
```

### 📤 Resultado

```prolog
Comida = pizza ;
Comida = pasta.
```

---

## 📌 3. Sintaxis y convenciones

Prolog tiene reglas estrictas de escritura.

### 📏 Convenciones generales

- Predicados y constantes → minúscula  
- Variables → mayúscula  
- Todo termina con punto `.`  
- `:-` se lee como **"si"**  
- Para operaciones matemáticas se usa `is`

---

### 🔧 Operadores importantes

| Operador | Significado |
|----------|------------|
| `,` | AND lógico |
| `;` | OR lógico |
| `=` | Unificación |
| `\=` | Desigualdad |
| `is` | Evaluación aritmética |

---

## 📌 4. Consultas básicas

Las consultas permiten interactuar con la base de conocimiento.

### 🔹 Sintaxis

```prolog
?- predicado(argumentos).
```

---

### 🔹 Tipos de consultas

#### ✅ a) Consulta exacta (sí/no)

```prolog
?- gusta(juan, pizza).
true.
```

---

#### 🔍 b) Consulta con variables

```prolog
?- gusta(juan, Comida).
```

Resultado:

```prolog
Comida = pizza.
```

---

#### 🔄 c) Consulta con múltiples respuestas

```prolog
?- gusta(Persona, pizza).
```

Resultado:

```prolog
Persona = juan.
```

---

#### 🧠 d) Consulta con reglas

```prolog
?- le_gusta(pedro, Comida).
```

Resultado:

```prolog
Comida = pizza ;
Comida = pasta.
```

👉 Presiona `;` para ver más resultados.

---

## 📁 Ejemplo completo de archivo `.pl`

```prolog
% archivo: gustos.pl

% Hechos
gusta(juan, pizza).
gusta(maria, pasta).
gusta(ana, tacos).
amigo(pedro, juan).
amigo(pedro, maria).
amigo(luis, ana).

% Regla
le_gusta(X, Y) :- amigo(X, Z), gusta(Z, Y).
```

---

# 🧪 Ejemplos prácticos por nivel

## 🟢 Ejemplo 1: Nivel básico – Gustos

```prolog
gusta(ana, pizza).
gusta(ana, helado).
gusta(pablo, hamburguesa).
```

---

## 🟡 Ejemplo 2: Relaciones familiares

```prolog
padre(carlos, maria).
madre(laura, maria).
padre(carlos, jose).
madre(laura, jose).

hermano(X, Y) :-
    padre(P, X),
    padre(P, Y),
    madre(M, X),
    madre(M, Y),
    X \= Y.
```

---

## 🟠 Ejemplo 3: Empresa

```prolog
empleado(alicia, ventas).
empleado(marco, contabilidad).
empleado(luis, ventas).

compañeros(X, Y) :-
    empleado(X, D),
    empleado(Y, D),
    X \= Y.
```

---

## 🔵 Ejemplo 4: Transporte (recursividad)

```prolog
conecta(ciudad1, ciudad2).
conecta(ciudad2, ciudad3).
conecta(ciudad3, ciudad4).

puede_llegar(X, Y) :- conecta(X, Y).
puede_llegar(X, Y) :- conecta(X, Z), puede_llegar(Z, Y).
```

---

## 🔴 Ejemplo 5: Gustos indirectos

```prolog
gusta(juan, pizza).
gusta(luis, sushi).
amigo(ana, juan).
amigo(ana, luis).
amigo(mario, ana).

le_gusta_indirectamente(X, Y) :-
    amigo(X, Z),
    gusta(Z, Y).

le_gusta_indirectamente(X, Y) :-
    amigo(X, Z),
    le_gusta_indirectamente(Z, Y).
```

---

# 🧠 Conclusión

En esta unidad aprendiste a:

- Representar conocimiento con **hechos**
- Inferir información usando **reglas**
- Realizar **consultas**
- Aplicar **recursividad**
- Modelar problemas reales con lógica
