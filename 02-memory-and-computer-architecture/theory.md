# 💾 Memory & Architecture: Deep Dive

Como programador de sistemas, la memoria es tu lienzo. No es un recurso infinito, es un espacio físico con reglas estrictas de acceso y organización.

## 1. El Espacio de Direccionamiento Virtual

Los procesos no acceden a la RAM física directamente. El SO proporciona una ilusión llamada **Memoria Virtual**.

*   **Paginación**: División de la memoria en trozos de tamaño fijo (normalmente 4KB).
*   **MMU (Memory Management Unit)**: Hardware que traduce direcciones virtuales a físicas usando la *Page Table*.

---

## 2. Stack vs Heap

### The Stack (Pila)
*   **Gestión**: Automática (LIFO).
*   **Velocidad**: Extremadamente rápida (acceso local en caché).
*   **Limitación**: Tamaño fijo y pequeño. Ideal para variables locales y control de funciones.

### The Heap (Montículo)
*   **Gestión**: Manual (C/C++) o semi-automática (Rust).
*   **Velocidad**: Más lenta (requiere buscar espacio libre).
*   **Flexibilidad**: Dinámica, puede crecer hasta agotar la RAM.

---

## 3. Alineación y Padding (Memory Alignment)

El CPU prefiere leer datos en direcciones que sean múltiplos de su tamaño de palabra (ej. 4 u 8 bytes).

```c
struct Example {
    char a;    // 1 byte
    // 3 bytes de padding aquí
    int b;     // 4 bytes
}; // Total: 8 bytes, no 5.
```

---

## 4. Endianness: Big vs Little

¿Cómo se guardan los bytes de un número multibyte en memoria?
*   **Little Endian (x86, ARM)**: El byte menos significativo primero.
*   **Big Endian (Redes, PowerPC)**: El byte más significativo primero.

---

## 📚 Referencias Académicas
1.  **Bryant, R. E., & O'Hallaron, D. R.** *Computer Systems: A Programmer's Perspective*.
2.  **Drepper, U.** *What Every Programmer Should Know About Memory*.
3.  **Intel 64 and IA-32 Architectures Software Developer’s Manuals**.
