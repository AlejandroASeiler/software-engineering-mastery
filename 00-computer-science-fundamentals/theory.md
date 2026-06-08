# 🏛️ Computer Science Fundamentals: The Bedrock

Para ser un experto en sistemas, no puedes ver la computadora como una "caja negra". Debes entender cómo los electrones se convierten en lógica y cómo esa lógica se organiza para procesar información.

## 1. Arquitectura de Von Neumann vs Harvard

### Arquitectura de Von Neumann
Es la base de la mayoría de las computadoras modernas. Se caracteriza por tener una **única memoria principal** que almacena tanto instrucciones como datos.

*   **Componentes**: CPU (ALU + Registros + CU), Memoria, E/S.
*   **El "Cuello de Botella" de Von Neumann**: La velocidad de procesamiento está limitada por la tasa de transferencia entre la CPU y la memoria.

### Arquitectura Harvard
Separa físicamente la memoria de instrucciones de la memoria de datos. Común en sistemas embebidos y DSPs.

---

## 2. La Jerarquía de Memoria (The Memory Wall)

El rendimiento de un sistema moderno no depende solo de los GHz de la CPU, sino de la **localidad de los datos**.

| Nivel | Latencia (Ciclos) | Tamaño | Descripción |
|-------|-------------------|--------|-------------|
| **Registros** | 1 | Bytes | Dentro de la ALU. Acceso instantáneo. |
| **L1 Cache** | ~4 | KB | Muy rápida, una por núcleo. |
| **L2 Cache** | ~12 | KB/MB | Balance entre velocidad y tamaño. |
| **L3 Cache** | ~40 | MB | Compartida entre núcleos. |
| **RAM (DRAM)**| ~200+ | GB | Memoria principal. Latencia significativa. |
| **SSD/NVMe**  | ~100,000+ | TB | Almacenamiento persistente. |

> **Ley de Localidad**:
> 1. **Localidad Temporal**: Si se accede a un dato, es probable que se acceda de nuevo pronto.
> 2. **Localidad Espacial**: Si se accede a un dato, es probable que se acceda a sus vecinos pronto.

---

## 3. CPU: Ciclo de Instrucción (Fetch-Decode-Execute)

1.  **Fetch**: Se trae la instrucción desde la memoria (apuntada por el *Program Counter*).
2.  **Decode**: La *Control Unit* interpreta qué operación debe realizarse.
3.  **Execute**: La *ALU* realiza la operación (suma, resta, AND, etc.).
4.  **Writeback**: El resultado se guarda en un registro o memoria.

---

## 4. Casos Reales de Uso
*   **Optimización de Base de Datos**: Entender el acceso a disco vs RAM para diseñar índices.
*   **High Frequency Trading (HFT)**: Minimizar los saltos entre cachés para reducir microsegundos.
*   **Game Engines**: Organizar datos en memoria (Data Oriented Design) para maximizar el uso de L1/L2.

---

## 📚 Referencias Académicas
1.  **Hennessy, J. L., & Patterson, D. A.** (2017). *Computer Architecture: A Quantitative Approach*.
2.  **Tanenbaum, A. S.** (2012). *Structured Computer Organization*.
3.  **Paper**: *What Every Programmer Should Know About Memory* - Ulrich Drepper.
