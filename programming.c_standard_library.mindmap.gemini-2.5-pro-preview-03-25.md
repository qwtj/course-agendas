# C Standard Library #CLibrary #StdLib #CProgramming
The collection of header files and library routines provided by the C standard for common operations.

## Overview and Concepts #Introduction #CoreConcepts #Standardization
General principles behind the C Standard Library.
### Purpose #Goal #Design
Why the standard library exists: portability, convenience, efficiency.
### Conformance #Standards #Compliance
Hosted vs. Freestanding implementations.
### Using the Library #Headers #Linking
How to include headers (`#include`) and link against the library.
### Error Handling Philosophy #Errors #ReturnValues #errno
Common patterns for indicating errors (return values, `errno`).

## `<assert.h>`: Diagnostics #Debugging #Assertions #Verification
Provides the `assert` macro for verifying assumptions in the code.
### `assert` Macro #Macro #DebuggingTool #RuntimeCheck
Checks a condition at runtime; if false, prints diagnostic info and terminates.
### `NDEBUG` Macro #Optimization #Control
Disables `assert` checks when defined before including `<assert.h>`.

## `<complex.h>`: Complex Number Arithmetic (C99) #Math #ComplexNumbers #C99
Supports complex number types and operations.
### Types #DataTypes #Complex
`_Complex` keyword (or `complex`), `double _Complex`, `float _Complex`, `long double _Complex`.
### Macros #Constants #ComplexValues
`complex`, `I`, `_Complex_I`.
### Basic Operations #Arithmetic #ComplexMath
Addition, subtraction, multiplication, division.
### Complex Functions #Trigonometry #Exponential #Logarithmic
`cabs`, `carg`, `cimag`, `creal`, `conj`, `cproj`, `cexp`, `clog`, `cpow`, `csqrt`, `csin`, `ccos`, `ctan`, etc.

## `<ctype.h>`: Character Handling #Characters #Classification #Conversion
Functions for classifying and converting characters.
### Character Classification Functions #Testing #CharacterType
`isalnum`, `isalpha`, `isblank` (C99), `iscntrl`, `isdigit`, `isgraph`, `islower`, `isprint`, `ispunct`, `isspace`, `isupper`, `isxdigit`.
Checks if a character belongs to a specific category.
### Character Case Mapping Functions #Conversion #CaseChange
`tolower`, `toupper`.
Converts character case.

## `<errno.h>`: Error Codes #Errors #Reporting #errno
Defines the `errno` macro and symbolic error codes.
### `errno` Macro #GlobalVariable #ErrorIndicator
An integer variable set by system calls and some library functions to indicate error conditions. Must include `<errno.h>` to use it.
### Error Constants #Macros #ErrorTypes
`EDOM`, `ERANGE`, `EILSEQ` (C95), and potentially others (implementation-defined).

## `<fenv.h>`: Floating-Point Environment (C99) #FloatingPoint #IEEE754 #C99
Provides access to the floating-point status flags and control modes.
### Floating-Point Exceptions #Flags #Errors
`FE_DIVBYZERO`, `FE_INEXACT`, `FE_INVALID`, `FE_OVERFLOW`, `FE_UNDERFLOW`.
### Rounding Modes #Control #Precision
`FE_DOWNWARD`, `FE_TONEAREST`, `FE_TOWARDZERO`, `FE_UPWARD`.
### Environment Access Functions #StateManagement #FPControl
`feclearexcept`, `fegetexceptflag`, `feraiseexcept`, `fesetexceptflag`, `fetestexcept`, `fegetround`, `fesetround`, `fegetenv`, `feholdexcept`, `fesetenv`, `feupdateenv`.

## `<float.h>`: Floating-Point Characteristics #Limits #FloatingPoint #DataTypes
Defines macros specifying properties of floating-point types.
### Properties for `float` #SinglePrecision #Limits
`FLT_RADIX`, `FLT_MANT_DIG`, `FLT_DIG`, `FLT_MIN_EXP`, `FLT_MIN_10_EXP`, `FLT_MAX_EXP`, `FLT_MAX_10_EXP`, `FLT_MAX`, `FLT_EPSILON`, `FLT_MIN`.
### Properties for `double` #DoublePrecision #Limits
`DBL_MANT_DIG`, `DBL_DIG`, `DBL_MIN_EXP`, `DBL_MIN_10_EXP`, `DBL_MAX_EXP`, `DBL_MAX_10_EXP`, `DBL_MAX`, `DBL_EPSILON`, `DBL_MIN`.
### Properties for `long double` #ExtendedPrecision #Limits
`LDBL_MANT_DIG`, `LDBL_DIG`, `LDBL_MIN_EXP`, `LDBL_MIN_10_EXP`, `LDBL_MAX_EXP`, `LDBL_MAX_10_EXP`, `LDBL_MAX`, `LDBL_EPSILON`, `LDBL_MIN`.
### General Properties #Rounding #EvaluationMethod
`FLT_ROUNDS`, `FLT_EVAL_METHOD` (C99).

## `<inttypes.h>`: Format Conversion of Integer Types (C99) #Integers #Formatting #C99
Extends `<stdint.h>` with format specifiers for fixed-width integers and functions for integer conversion.
### Format Specifier Macros #Printf #Scanf #Integers
Macros for `printf` (e.g., `PRIdN`, `PRIuN`, `PRIxN`) and `scanf` (e.g., `SCNdN`, `SCNuN`, `SCNxN`) families for `intN_t`, `uintN_t`, `int_leastN_t`, `uint_leastN_t`, `int_fastN_t`, `uint_fastN_t`, `intmax_t`, `uintmax_t`, `intptr_t`, `uintptr_t`.
### Functions #IntegerConversion #WideStrings
`imaxabs`, `imaxdiv`, `strtoimax`, `strtoumax`, `wcstoimax`, `wcstoumax`.

## `<iso646.h>`: Alternative Spellings (C95) #Keywords #Operators #C95
Defines macros for alternative spellings of logical and bitwise operators (useful for keyboards lacking certain characters).
### Operator Macros #AlternativeSyntax #Readability
`and` (`&&`), `and_eq` (`&=`), `bitand` (`&`), `bitor` (`|`), `compl` (`~`), `not` (`!`), `not_eq` (`!=`), `or` (`||`), `or_eq` (`|=`), `xor` (`^`), `xor_eq` (`^=`).

## `<limits.h>`: Sizes of Integer Types #Limits #Integers #DataTypes
Defines macros specifying properties and limits of integer types.
### Character Limits #Char #Limits
`CHAR_BIT`, `SCHAR_MIN`, `SCHAR_MAX`, `UCHAR_MAX`, `CHAR_MIN`, `CHAR_MAX`.
### Integer Limits #Int #Short #Long #Limits
`SHRT_MIN`, `SHRT_MAX`, `USHRT_MAX`, `INT_MIN`, `INT_MAX`, `UINT_MAX`, `LONG_MIN`, `LONG_MAX`, `ULONG_MAX`, `LLONG_MIN` (C99), `LLONG_MAX` (C99), `ULLONG_MAX` (C99).
### Multi-byte Character Limits #MBChar #Limits
`MB_LEN_MAX`.

## `<locale.h>`: Localization #Internationalization #Formatting #Culture
Provides functions to set and query localization settings influencing formatting, collation, etc.
### Locale Categories #Settings #Formatting
`LC_ALL`, `LC_COLLATE`, `LC_CTYPE`, `LC_MONETARY`, `LC_NUMERIC`, `LC_TIME`.
### Core Functions #LocaleControl #Query
`setlocale`, `localeconv`.
### `lconv` Structure #FormattingDetails #LocaleData
Structure containing detailed numeric and monetary formatting information (`decimal_point`, `thousands_sep`, `currency_symbol`, etc.).

## `<math.h>`: Mathematics #Math #FloatingPoint #Functions
Declares mathematical functions and macros.
### Types and Macros #DataTypes #Constants
`float_t`, `double_t` (C99), `HUGE_VAL`, `HUGE_VALF`, `HUGE_VALL`, `INFINITY`, `NAN`, `FP_INFINITE`, `FP_NAN`, `FP_NORMAL`, `FP_SUBNORMAL`, `FP_ZERO`, `FP_FAST_FMA` (C99).
### Trigonometric Functions #Angle #Geometry
`acos`, `asin`, `atan`, `atan2`, `cos`, `sin`, `tan`.
### Hyperbolic Functions #Exponential #Geometry
`acosh`, `asinh`, `atanh`, `cosh`, `sinh`, `tanh`.
### Exponential and Logarithmic Functions #Exponent #Logarithm
`exp`, `exp2`, `expm1`, `frexp`, `ldexp`, `log`, `log10`, `log1p`, `log2`, `ilogb`, `logb`.
### Power Functions #Exponentiation #Root
`pow`, `sqrt`, `cbrt`, `hypot`.
### Rounding and Remainder Functions #IntegerConversion #Modulo
`ceil`, `floor`, `trunc`, `round`, `lround`, `llround`, `nearbyint`, `rint`, `lrint`, `llrint`, `fmod`, `remainder`, `remquo`.
### Manipulation Functions #FloatingPointBits #Sign
`copysign`, `nan`, `nextafter`, `nexttoward`.
### Max, Min, Difference Functions #Comparison #FloatingPoint
`fdim`, `fmax`, `fmin`.
### Floating Multiply-Add #FMA #Performance #C99
`fma`.
### Classification Functions #FPType #Check
`fpclassify`, `isfinite`, `isinf`, `isnan`, `isnormal`, `signbit`.
### Comparison Macros #FPCompare #Unordered #C99
`isgreater`, `isgreaterequal`, `isless`, `islessequal`, `islessgreater`, `isunordered`.

## `<setjmp.h>`: Non-local Jumps #ControlFlow #ErrorHandling #Exceptions
Provides `setjmp` and `longjmp` for performing non-local gotos.
### `jmp_buf` Type #Environment #State
An array type used to store the execution context.
### `setjmp` Macro #SaveContext #ReturnPoint
Saves the current execution context in a `jmp_buf` and returns 0. Returns non-zero if returning via `longjmp`.
### `longjmp` Function #RestoreContext #Jump
Restores the context saved by `setjmp` and transfers control back to the `setjmp` call site.

## `<signal.h>`: Signal Handling #AsynchronousEvents #Interrupts #ProcessControl
Defines functions and types for handling signals (asynchronous notifications).
### `sig_atomic_t` Type #Atomic #DataType
An integer type that can be accessed atomically, even in the presence of signals.
### Signal Macros #SignalTypes #Events
`SIGABRT`, `SIGFPE`, `SIGILL`, `SIGINT`, `SIGSEGV`, `SIGTERM`, and others (implementation-defined). `SIG_DFL`, `SIG_ERR`, `SIG_IGN`.
### Core Functions #SignalManagement #Handlers
`signal`, `raise`.

## `<stdalign.h>`: Alignment (C11) #Memory #Alignment #C11
Defines macros for controlling memory alignment.
### Macros #AlignmentControl #Keywords
`alignas`, `alignof`, `__alignas_is_defined`, `__alignof_is_defined`.

## `<stdarg.h>`: Variable Arguments #Functions #Variadic #Parameters
Provides facilities for defining functions that accept a variable number of arguments.
### `va_list` Type #ArgumentPointer #State
A type used to hold information about the variable arguments.
### Macros #ArgumentAccess #VariadicMacros
`va_start`, `va_arg`, `va_end`, `va_copy` (C99).

## `<stdatomic.h>`: Atomics (C11) #Concurrency #Threading #C11
Provides types and operations for atomic access to objects, suitable for multi-threaded programming without explicit locks.
### Lock-Free Macro #AtomicProperty #Query
`ATOMIC_BOOL_LOCK_FREE`, `ATOMIC_CHAR_LOCK_FREE`, etc., `ATOMIC_FLAG_INIT`.
### Types #AtomicTypes #DataTypes
`atomic_flag`, `atomic_bool`, `atomic_char`, `atomic_schar`, ... `atomic_intptr_t`, `atomic_uintptr_t`, `atomic_size_t`, `atomic_ptrdiff_t`, `atomic_intmax_t`, `atomic_uintmax_t`.
### Operations #AtomicFunctions #MemoryOrder
`atomic_init`, `atomic_load`, `atomic_store`, `atomic_exchange`, `atomic_compare_exchange_strong`, `atomic_compare_exchange_weak`, `atomic_fetch_add`, `atomic_fetch_sub`, `atomic_fetch_or`, `atomic_fetch_xor`, `atomic_fetch_and`.
### Atomic Flag Operations #FlagSpecific #Spinlock
`atomic_flag_test_and_set`, `atomic_flag_clear`.
### Memory Order #Synchronization #Consistency
`memory_order_relaxed`, `memory_order_consume`, `memory_order_acquire`, `memory_order_release`, `memory_order_acq_rel`, `memory_order_seq_cst`.
### Fence Functions #MemoryBarrier #Ordering
`atomic_thread_fence`, `atomic_signal_fence`.

## `<stdbool.h>`: Boolean Type and Values (C99) #Boolean #Logic #C99
Defines the boolean type and related macros.
### `bool` Macro #DataType #BooleanType
Expands to `_Bool`.
### `true` Macro #Constant #BooleanValue
Expands to `1`.
### `false` Macro #Constant #BooleanValue
Expands to `0`.
### `__bool_true_false_are_defined` Macro #Indicator #DefinitionCheck
Expands to `1`.

## `<stddef.h>`: Common Definitions #Types #Macros #Core
Defines several fundamental types and macros.
### Types #StandardTypes #DataTypes
`ptrdiff_t` (result of pointer subtraction), `size_t` (result of `sizeof`), `max_align_t` (C11, type with largest alignment requirement), `wchar_t` (wide character type).
### Macros #Constants #NullPointer
`NULL` (null pointer constant), `offsetof` (offset of a member within a structure).

## `<stdint.h>`: Integer Types (C99) #Integers #FixedWidth #C99
Defines integer types with specific width guarantees.
### Exact-Width Integer Types #SpecificSize #Portability
`intN_t`, `uintN_t` (e.g., `int8_t`, `uint32_t`). Optional.
### Minimum-Width Integer Types #AtLeastSize #GuaranteedSize
`int_leastN_t`, `uint_leastN_t`. Guaranteed.
### Fastest Minimum-Width Integer Types #Performance #OptimizedSize
`int_fastN_t`, `uint_fastN_t`. Guaranteed.
### Integer Types Capable of Holding Pointers #PointerSize #MemoryAddress
`intptr_t`, `uintptr_t`. Optional.
### Greatest-Width Integer Types #MaximumSize #LargestInteger
`intmax_t`, `uintmax_t`. Guaranteed.
### Limits Macros #Constants #IntegerLimits
Macros defining the minimum and maximum values for each defined type (e.g., `INT8_MIN`, `UINT32_MAX`, `INTMAX_MAX`).
### Pointer Conversion Macros #Constants #PointerLimits
Macros for `intptr_t`, `uintptr_t`, `intmax_t`, `uintmax_t` (e.g., `PTRDIFF_MIN`, `SIZE_MAX`).

## `<stdio.h>`: Standard Input/Output #IO #Files #Streams
Defines types, macros, and functions for performing input and output operations.
### Types #CoreTypes #IOData
`FILE` (represents a stream), `fpos_t` (represents file position), `size_t`.
### Macros #Constants #Streams
`NULL`, `EOF` (End Of File), `BUFSIZ`, `FOPEN_MAX`, `FILENAME_MAX`, `L_tmpnam`, `SEEK_CUR`, `SEEK_END`, `SEEK_SET`, `TMP_MAX`, `stderr`, `stdin`, `stdout`.
### File Access Functions #OpenClose #Streams
`fopen`, `freopen`, `fflush`, `fclose`, `setbuf`, `setvbuf`.
### Formatted Input/Output Functions #TextIO #Conversion
`printf`, `fprintf`, `sprintf`, `snprintf` (C99), `vprintf`, `vfprintf`, `vsprintf`, `vsnprintf` (C99).
`scanf`, `fscanf`, `sscanf`, `vscanf` (C99), `vfscanf` (C99), `vsscanf` (C99).
### Character Input/Output Functions #CharIO #Streams
`fgetc`, `fgets`, `fputc`, `fputs`, `getc`, `getchar`, `gets` (deprecated/removed), `putc`, `putchar`, `puts`, `ungetc`.
### Direct Input/Output Functions #BinaryIO #RawData
`fread`, `fwrite`.
### File Positioning Functions #Seek #Positioning
`fgetpos`, `fseek`, `fsetpos`, `ftell`, `rewind`.
### Error Handling Functions #IOErrors #StatusCheck
`clearerr`, `feof`, `ferror`, `perror`.
### File Operations #RenameDelete #TemporaryFiles
`remove`, `rename`, `tmpfile`, `tmpnam`.

## `<stdlib.h>`: General Utilities #Memory #Conversion #Process #Random
Declares functions for general purpose utilities, including memory management, string conversion, random numbers, etc.
### String Conversion Functions #Parsing #NumericConversion
`atof`, `atoi`, `atol`, `atoll` (C99).
`strtod`, `strtof` (C99), `strtold` (C99).
`strtol`, `strtoll` (C99), `strtoul`, `strtoull` (C99).
### Pseudo-Random Sequence Generation #RandomNumbers #Simulation
`rand`, `srand`.
### Dynamic Memory Management #Heap #Allocation
`malloc`, `calloc`, `realloc`, `free`, `aligned_alloc` (C11).
### Environment Interaction #ProcessControl #System
`abort`, `atexit`, `at_quick_exit` (C11), `exit`, `_Exit` (C99), `getenv`, `quick_exit` (C11), `system`.
### Searching and Sorting Utilities #Algorithms #Arrays
`bsearch`, `qsort`.
### Integer Arithmetic Functions #Division #AbsoluteValue
`abs`, `labs`, `llabs` (C99).
`div`, `ldiv`, `lldiv` (C99).
### Multibyte/Wide Character Functions #CharacterEncoding #Conversion
`mblen`, `mbtowc`, `wctomb`, `mbstowcs`, `wcstombs`.

## `<stdnoreturn.h>`: Noreturn Function Specifier (C11) #Functions #ControlFlow #C11
Defines the `noreturn` macro.
### `noreturn` Macro #Attribute #FunctionSpecifier
Expands to `_Noreturn`. Used to specify that a function does not return to its caller.

## `<string.h>`: String Handling #Strings #Memory #Manipulation
Declares functions for manipulating character arrays (strings) and other blocks of memory.
### Copying Functions #MemoryCopy #StringCopy
`memcpy`, `memmove`, `strcpy`, `strncpy`.
### Concatenation Functions #StringAppend #Joining
`strcat`, `strncat`.
### Comparison Functions #StringCompare #MemoryCompare
`memcmp`, `strcmp`, `strcoll`, `strncmp`, `strxfrm`.
### Searching Functions #FindCharacter #FindSubstring #MemorySearch
`memchr`, `strchr`, `strcspn`, `strpbrk`, `strrchr`, `strspn`, `strstr`, `strtok`.
### Miscellaneous Functions #MemoryFill #ErrorStrings
`memset`, `strerror`, `strlen`.

## `<tgmath.h>`: Type-Generic Math (C99) #Math #Generics #C99
Defines type-generic macros for mathematical functions. Allows calling math functions without type suffixes (like `f` or `l`).
### Type-Generic Macros #MathMacros #Overloading
Macros like `sqrt`, `sin`, `cos`, `exp`, etc., that expand to the correct type-specific version (`sqrtf`, `sqrtl`, `sqrt`) based on the argument types. Works for real and complex types if `<complex.h>` is also included.

## `<threads.h>`: Threads (C11) #Concurrency #Parallelism #C11
Defines types, macros, and functions for managing threads, mutexes, condition variables, and thread-specific storage.
### Thread Management #Creation #Joining #Detaching
`thrd_t`, `thrd_create`, `thrd_equal`, `thrd_current`, `thrd_sleep`, `thrd_yield`, `thrd_exit`, `thrd_detach`, `thrd_join`.
### Mutexes #Synchronization #Locking
`mtx_t`, `mtx_plain`, `mtx_timed`, `mtx_recursive`, `mtx_init`, `mtx_lock`, `mtx_timedlock`, `mtx_trylock`, `mtx_unlock`, `mtx_destroy`.
### Condition Variables #Signaling #Waiting
`cnd_t`, `cnd_init`, `cnd_signal`, `cnd_broadcast`, `cnd_wait`, `cnd_timedwait`, `cnd_destroy`.
### Thread-Specific Storage #TLS #LocalStorage
`tss_t`, `tss_dtor_t`, `TSS_DTOR_ITERATIONS`, `tss_create`, `tss_get`, `tss_set`, `tss_delete`.
### Initialization Functions #OneTimeExecution #Initialization
`once_flag`, `call_once`, `ONCE_FLAG_INIT`.

## `<time.h>`: Date and Time #Time #Date #Clocks
Defines types, macros, and functions for manipulating date and time.
### Types #TimeData #DataTypes
`clock_t`, `time_t`, `struct tm`. `timespec` (C11).
### Macros #Constants #ClockID
`NULL`, `CLOCKS_PER_SEC`. `TIME_UTC` (C11).
### Time Manipulation Functions #Conversion #Breakdown
`asctime`, `clock`, `ctime`, `difftime`, `gmtime`, `localtime`, `mktime`, `strftime`, `time`, `timespec_get` (C11).

## `<uchar.h>`: Unicode Characters (C11) #Unicode #Characters #C11
Defines types and functions for manipulating UTF-16 and UTF-32 character strings.
### Types #UnicodeTypes #DataTypes
`char16_t`, `char32_t`, `mbstate_t`, `size_t`.
### Conversion Functions #UTF16 #UTF32 #Multibyte
`mbrtoc16`, `c16rtomb`, `mbrtoc32`, `c32rtomb`.

## `<wchar.h>`: Extended Multibyte and Wide Character Utilities (C95) #WideCharacters #Unicode #C95
Extends support for wide characters (handling character sets beyond basic ASCII/EBCDIC).
### Types and Macros #WideTypes #Constants
`wchar_t`, `wint_t`, `mbstate_t`, `struct tm`, `size_t`, `FILE`, `WCHAR_MAX`, `WCHAR_MIN`, `WEOF`.
### Formatted Wide Character I/O #WideIO #Streams
`fwprintf`, `fwscanf`, `swprintf`, `swscanf`, `vfwprintf`, `vfwscanf`, `vswprintf`, `vswscanf`, `wprintf`, `wscanf`.
### Wide Character I/O #CharIO #WideStreams
`fgetwc`, `fgetws`, `fputwc`, `fputws`, `fwide`, `getwc`, `getwchar`, `putwc`, `putwchar`, `ungetwc`.
### Wide String Manipulation #WideStrings #Manipulation
`wcscpy`, `wcsncpy`, `wcscat`, `wcsncat`, `wcscmp`, `wcscoll`, `wcsncmp`, `wcsxfrm`, `wcschr`, `wcscspn`, `wcslen`, `wcspbrk`, `wcsrchr`, `wcsspn`, `wcsstr`, `wcstok`.
### Wide String Numeric Conversion #WideParsing #Conversion
`wcstod`, `wcstof`, `wcstold`, `wcstol`, `wcstoll`, `wcstoul`, `wcstoull`.
### Wide Character Memory Manipulation #WideMemory #CopyCompare
`wmemchr`, `wmemcmp`, `wmemcpy`, `wmemmove`, `wmemset`.
### Time Conversion #WideTime #Formatting
`wcsftime`.
### Restartable Multibyte/Wide Conversion #Encoding #Stateful
`btowc`, `wctob`, `mbsinit`, `mbrlen`, `mbrtowc`, `wcrtomb`, `mbsrtowcs`, `wcsrtombs`.

## `<wctype.h>`: Wide Character Classification and Mapping Utilities (C95) #WideCharacters #Classification #C95
Functions analogous to `<ctype.h>` but for wide characters.
### Types and Macros #WideTypes #Constants
`wint_t`, `wctype_t`, `wctrans_t`, `WEOF`.
### Wide Character Classification #WideTesting #CharacterType
`iswalnum`, `iswalpha`, `iswblank`, `iswcntrl`, `iswdigit`, `iswgraph`, `iswlower`, `iswprint`, `iswpunct`, `iswspace`, `iswupper`, `iswxdigit`, `iswctype`.
### Extensible Wide Character Classification #CustomType #Classification
`wctype`.
### Wide Character Case Mapping #WideConversion #CaseChange
`towlower`, `towupper`, `towctrans`.
### Extensible Wide Character Mapping #CustomMapping #Transformation
`wctrans`.
