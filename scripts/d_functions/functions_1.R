# =============================================================================
# functions_1.R — Functions: Greet and Add
# Topic: d. Functions
# =============================================================================

library(tidyverse)

# --------------------------------------------------------------------------
# greet(name)
#
# WHY: wrapping the greeting in a function means any part of the code can
# produce a consistent, correctly formatted message without repeating the
# cat() call
# --------------------------------------------------------------------------
greet <- function(name) {
  cat("Hello,", name, "! Welcome to R programming.\n")
}

# --------------------------------------------------------------------------
# add(a, b)
#
# WHY: a named function makes the intent clearer at the call site —
# add(5, 3) reads better than an anonymous a + b scattered in the code
# --------------------------------------------------------------------------
add <- function(a, b) {
  a + b
}

# --------------------------------------------------------------------------
# Demonstration
# --------------------------------------------------------------------------

greet("Rhyu")
greet("Class")

cat("\n")
cat("5 + 3 =",    add(5, 3),    "\n")
cat("100 + 250 =", add(100, 250), "\n")
cat("7 + 14 =",   add(7, 14),   "\n")
