# 🧠 Programming Fundamentals: Logic & Paradigms

La programación no es aprender sintaxis, es aprender a estructurar el pensamiento lógico para resolver problemas de manera eficiente y escalable.

## 1. Lógica Booleana y Tablas de Verdad

La base de todo condicional. El CPU no entiende "si el usuario está logueado", entiende señales eléctricas que representan `1` (true) o `0` (false).

### Operadores Fundamentales
*   **AND (&&)**: Solo es cierto si ambos operandos lo son.
*   **OR (||)**: Es cierto si al menos uno lo es.
*   **NOT (!)**: Invierte el valor.
*   **XOR (^)**: Cierto si solo uno de los dos es cierto (Exclusivo).

---

## 2. Recursión vs Iteración

### Recursión
Una función que se llama a sí misma. 
*   **Ventaja**: Elegancia en problemas de estructura recursiva (árboles, grafos).
*   **Peligro**: *Stack Overflow* si no hay un caso base claro o la profundidad es excesiva.

### Iteración
Uso de bucles (`for`, `while`).
*   **Ventaja**: Más eficiente en uso de memoria (no añade marcos al stack).
*   **Uso**: Procesamiento de colecciones lineales.

---

## 3. Modularización y Abstracción

Dividir un sistema complejo en partes pequeñas e independientes.
*   **KISS**: Keep It Simple, Stupid.
*   **DRY**: Don't Repeat Yourself.
*   **YAGNI**: You Ain't Gonna Need It.

---

## 4. Complejidad Algorítmica (Big O Notation)

¿Cómo escala tu lógica cuando los datos crecen?

| Notación | Nombre | Ejemplo |
|----------|--------|---------|
| **O(1)** | Constante | Acceso a un array por índice. |
| **O(log n)** | Logarítmico | Búsqueda binaria. |
| **O(n)** | Lineal | Búsqueda simple en una lista. |
| **O(n log n)** | Lineal-Logarítmico | QuickSort / MergeSort. |
| **O(n²)** | Cuadrático | Bucles anidados (Bubble Sort). |

---

## 📚 Referencias Académicas
1.  **Knuth, D. E.** *The Art of Computer Programming*.
2.  **Abelson, H., & Sussman, G. J.** *Structure and Interpretation of Computer Programs (SICP)*.
3.  **Cormen, T. H.** *Introduction to Algorithms*.
