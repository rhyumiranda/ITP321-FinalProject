# C. Repeat Loop

A `repeat` loop runs indefinitely until an explicit `break` statement is reached. The exit condition is written inside the loop body, not at the top.

## Examples

### repeat_1.R — Print Numbers 1 to 5
Prints each number from 1 to 5, then breaks. Demonstrates the simplest use of `repeat` with a mandatory `break`.

**Run:**
```r
source("scripts/c_repeat/repeat_1.R")
```

### repeat_2.R — Guess a Secret Number
Randomly picks a number between 1 and 10 each iteration and checks if it matches the secret number (7). Breaks when found or when the maximum number of tries is reached.

**Run:**
```r
source("scripts/c_repeat/repeat_2.R")
```
