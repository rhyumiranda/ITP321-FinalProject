# D. Functions

A function packages a block of logic under a name so it can be reused without copy-pasting. Write once, call anywhere.

## Examples

### functions_1.R — Greet and Add
Defines two simple functions: `greet(name)` prints a welcome message, and `add(a, b)` returns the sum of two numbers. Both are called multiple times to show reusability.

**Run:**
```r
source("scripts/d_functions/functions_1.R")
```

### functions_2.R — Temperature Converter
Defines `celsius_to_fahrenheit()` and `fahrenheit_to_celsius()`, each wrapping a single conversion formula. Demonstrates applying functions to a vector of values inside a `for` loop.

**Run:**
```r
source("scripts/d_functions/functions_2.R")
```
