# 🧠 UNIDAD II. Manejo de instrucciones de bajo nivel

## 📌 Descripción

En esta unidad se estudia cómo el procesador ejecuta instrucciones a nivel bajo, trabajando directamente con:

- Registros
- Memoria
- Direcciones
- Flujo de ejecución

Se introduce al alumno al pensamiento cercano al lenguaje ensamblador, utilizando también C/C++ como apoyo didáctico, especialmente con punteros.

---

# 🔹 2.1 Descriptores y Selectores

## 📌 Concepto

En arquitecturas como Intel x86, la memoria se maneja mediante un esquema de segmentación:

- Selector: Identifica un segmento de memoria
- Descriptor: Describe las características del segmento (base, tamaño, permisos)

## 🧠 Funcionamiento

1. El selector apunta a una tabla (GDT/LDT)
2. La tabla contiene descriptores
3. El descriptor define:
   - Dirección base
   - Límite
   - Permisos

## 🧪 Ejemplo en ensamblador

```asm
MOV AX, DATA_SEG
MOV DS, AX
```

## 🧠 Equivalente en C++

```cpp
int arreglo[5] = {10,20,30,40,50};
int *ptr = arreglo;

cout << *(ptr + 2);
```

---

# 🔹 2.2 Conjunto de Instrucciones

## 📌 Concepto

Es el conjunto de operaciones que la CPU puede ejecutar.

## 🧩 Tipos de instrucciones

### Transferencia de datos
```asm
MOV AX, BX
```

### Aritméticas
```asm
ADD AX, 5
SUB BX, AX
```

### Lógicas
```asm
AND AX, BX
OR AX, 1
```

### Control de flujo
```asm
JMP etiqueta
```

## 🧠 Equivalente en C++

```cpp
int a = 5;
int b = 10;

a = b;
a = a + 5;

if(a == b) {
}
```

---

# 🔹 2.3 Instrucciones de Acceso Directo

## 📌 Concepto

Se accede a una dirección de memoria específica definida directamente en la instrucción.

## 🧪 Ejemplo en ensamblador

```asm
MOV AX, [1000h]
```

## 🧠 Equivalente en C++

```cpp
int valor = 50;
int *ptr = &valor;

cout << *ptr;
```

---

# 🔹 2.4 Instrucciones de Carga Indirecta

## 📌 Concepto

La dirección de memoria está almacenada en un registro o puntero.

## 🧪 Ejemplo en ensamblador

```asm
MOV BX, 1000h
MOV AX, [BX]
```

## 🧠 Equivalente en C++

```cpp
int valor = 25;
int *ptr = &valor;

cout << *ptr;
```

---

# 🔹 2.5 Saltos Condicionales e Incondicionales

## 📌 Concepto

Permiten modificar el flujo de ejecución del programa.

### Salto incondicional
```asm
JMP etiqueta
```

### Saltos condicionales
```asm
CMP AX, BX
JE iguales
JNE diferentes
```

## 🧠 Equivalente en C++

```cpp
if(a == b) {
}
```

---

# 🔹 2.6 Instrucciones de Corrimiento

## 📌 Concepto

Permiten desplazar bits a la izquierda o derecha.

### Corrimiento lógico
```asm
SHL AX, 1
SHR AX, 1
```

### Corrimiento aritmético
```asm
SAR AX, 1
```

## 🧠 Equivalente en C++

```cpp
int x = 4;
x = x << 1;
```

---

# 🚀 Uso de Punteros en C++

## 📌 Importancia

El uso de punteros en C++ permite simular el comportamiento del ensamblador.

## 🧪 Ejemplo práctico

```cpp
#include <iostream>
using namespace std;

int main() {
    int arr[3] = {10, 20, 30};
    int *ptr = arr;

    for(int i = 0; i < 3; i++) {
        cout << *(ptr + i) << endl;
    }

    return 0;
}
```

---

# 📌 Conclusión

Esta unidad permite al alumno comprender cómo funciona realmente una computadora a nivel interno.
