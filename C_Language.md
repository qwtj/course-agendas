# I. Foundations of C Programming

## Introduction to C

### History and Evolution of C

### Features of C: Portability, Efficiency, Flexibility

### Basic Structure of a C Program

```c
#include <stdio.h>

int main() {
  printf("Hello, World!
");
  return 0;
}
```

## Data Types, Variables, and Operators

### Primitive Data Types: `int`, `float`, `char`, `double`, `void`

### Declaring and Initializing Variables

```c
int age = 30;
float height = 5.9;
char initial = 'J';
```

### Operators: Arithmetic, Relational, Logical, Assignment, Bitwise, Increment/Decrement

### Operator Precedence and Associativity

### Type Conversion: Implicit and Explicit (Casting)

```c
float result = (float) 5 / 2;  // Explicit casting
```

# II. Control Flow and Functions

## Conditional Statements

### `if` Statement

```c
if (age >= 18) {
  printf("Adult
");
}
```

### `if-else` Statement

```c
if (age >= 18) {
  printf("Adult
");
} else {
  printf("Minor
");
}
```

### `if-else if-else` Ladder

### `switch` Statement

```c
switch (grade) {
  case 'A': printf("Excellent!
"); break;
  case 'B': printf("Good!
"); break;
  default: printf("Average
");
}
```

## Loops

### `for` Loop

```c
for (int i = 0; i < 10; i++) {
  printf("%d
", i);
}
```

### `while` Loop

```c
int i = 0;
while (i < 10) {
  printf("%d
", i);
  i++;
}
```

### `do-while` Loop

```c
int i = 0;
do {
  printf("%d
", i);
  i++;
} while (i < 10);
```

### `break` and `continue` Statements

## Functions

### Function Declaration and Definition

```c
int add(int a, int b); // Declaration

int add(int a, int b) { // Definition
  return a + b;
}
```

### Function Prototypes

### Function Arguments and Return Values

### Call by Value vs. Call by Reference

### Recursion

# III. Arrays and Pointers

## Arrays

### Declaring and Initializing Arrays

```c
int numbers[5] = {1, 2, 3, 4, 5};
```

### Accessing Array Elements

```c
printf("%d
", numbers[0]);
```

### Multidimensional Arrays

```c
int matrix[3][3] = {{1, 2, 3}, {4, 5, 6}, {7, 8, 9}};
```

### Arrays and Loops

## Pointers

### Understanding Memory Addresses

### Declaring and Initializing Pointers

```c
int age = 30;
int *agePtr = &age;
```

### Dereferencing Pointers

```c
printf("%d
", *agePtr); // Accessing the value pointed to by agePtr
```

### Pointer Arithmetic

### Pointers and Arrays

### Dynamic Memory Allocation: `malloc`, `calloc`, `realloc`, `free`

```c
int *arr = (int*) malloc(5 * sizeof(int));
free(arr);
```

# IV. Strings and Structures

## Strings

### Character Arrays

```c
char name[20] = "John Doe";
```

### String Manipulation Functions: `strcpy`, `strcat`, `strlen`, `strcmp`

```c
#include <string.h>
strcpy(destination, source);
```

### String Literals

## Structures

### Defining Structures

```c
struct Person {
  char name[50];
  int age;
};
```

### Declaring and Initializing Structure Variables

```c
struct Person person1 = {"Jane Doe", 25};
```

### Accessing Structure Members

```c
printf("%s
", person1.name);
```

### Pointers to Structures

```c
struct Person *personPtr = &person1;
printf("%s
", personPtr->name);
```

### Arrays of Structures

### Nested Structures

# V. File I/O and Preprocessing

## File I/O

### Opening and Closing Files: `fopen`, `fclose`

```c
FILE *filePtr = fopen("data.txt", "r");
fclose(filePtr);
```

### Reading from Files: `fscanf`, `fgets`, `fread`

```c
fscanf(filePtr, "%d", &age);
```

### Writing to Files: `fprintf`, `fputs`, `fwrite`

```c
fprintf(filePtr, "Age: %d
", age);
```

### Error Handling in File Operations

## Preprocessing

### `#include` Directive

### `#define` Directive (Macros)

```c
#define PI 3.14159
```

### Conditional Compilation: `#ifdef`, `#ifndef`, `#endif`

```c
#ifdef DEBUG
  printf("Debugging information
");
#endif
```

### Predefined Macros

# VI. Advanced Topics

## Bitwise Operations in Depth

### Bitwise AND, OR, XOR, NOT, Left Shift, Right Shift

### Bit Fields

## Unions

### Defining Unions

### Using Unions for Memory Optimization

## Enumerations

### Defining Enumerations

### Using Enumerations for Readability

## Variable Arguments (`stdarg.h`)

### Using `va_list`, `va_start`, `va_arg`, `va_end`

## Error Handling (`errno.h`)

### Standard Error Numbers

### Using `perror`

## Libraries and Linking

### Static Libraries

### Dynamic/Shared Libraries
