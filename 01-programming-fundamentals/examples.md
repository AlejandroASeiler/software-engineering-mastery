# 💻 Programming Fundamentals: Code Examples

En esta sección comparamos cómo los tres lenguajes de sistemas manejan la lógica básica, la recursión y la modularización.

## 1. Lógica y Condicionales

### C (C17)
```c
#include <stdio.h>
#include <stdbool.h>

int main() {
    bool is_admin = true;
    bool has_permission = false;

    if (is_admin || has_permission) {
        printf("Access granted\n");
    } else {
        printf("Access denied\n");
    }
    return 0;
}
```

### C++ (C++23)
```cpp
#include <iostream>

int main() {
    auto is_admin = true;
    auto has_permission = false;

    if (is_admin or has_permission) { // C++ permite 'or', 'and', 'not'
        std::cout << "Access granted\n";
    }
    return 0;
}
```

### Rust (Stable)
```rust
fn main() {
    let is_admin = true;
    let has_permission = false;

    if is_admin || has_permission {
        println!("Access granted");
    } else {
        println!("Access denied");
    }
}
```

---

## 2. Recursión: Factorial

### C
```c
long factorial(int n) {
    if (n <= 1) return 1;
    return n * factorial(n - 1);
}
```

### C++ (Compile-time Recursion)
```cpp
template<int N>
struct Factorial {
    static constexpr long value = N * Factorial<N - 1>::value;
};

template<>
struct Factorial<0> {
    static constexpr long value = 1;
};
```

### Rust (Pattern Matching)
```rust
fn factorial(n: u64) -> u64 {
    match n {
        0 | 1 => 1,
        _ => n * factorial(n - 1),
    }
}
```

---

## 3. Diferencias Clave
*   **C**: Simplicidad absoluta. No hay abstracciones de alto nivel.
*   **C++**: Poder masivo con metaprogramación. Puedes mover la lógica al tiempo de compilación.
*   **Rust**: Seguridad por defecto. El compilador te obliga a manejar todos los casos posibles.
