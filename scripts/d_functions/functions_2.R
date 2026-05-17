# =============================================================================
# functions_2.R — Functions: Temperature Converter
# Topic: d. Functions
# =============================================================================

library(tidyverse)

# --------------------------------------------------------------------------
# celsius_to_fahrenheit(celsius)
#
# WHY: encapsulating the formula prevents repeating the conversion arithmetic
# and makes it trivial to apply to a whole column via mutate()
# --------------------------------------------------------------------------
celsius_to_fahrenheit <- function(celsius) {
  celsius * 9 / 5 + 32
}

# --------------------------------------------------------------------------
# fahrenheit_to_celsius(fahrenheit)
#
# WHY: the inverse formula in its own function keeps both directions consistent
# and easy to unit-test independently
# --------------------------------------------------------------------------
fahrenheit_to_celsius <- function(fahrenheit) {
  (fahrenheit - 32) * 5 / 9
}

# --------------------------------------------------------------------------
# Demonstration
# --------------------------------------------------------------------------

TEMPS_C <- c(0, 20, 37, 100)   # freezing, room temp, body temp, boiling
TEMPS_F <- c(32, 68, 98.6, 212)

cat("=== Celsius to Fahrenheit ===\n")
for (t in TEMPS_C) {
  cat(" ", t, "°C =", celsius_to_fahrenheit(t), "°F\n")
}

cat("\n=== Fahrenheit to Celsius ===\n")
for (t in TEMPS_F) {
  cat(" ", t, "°F =", round(fahrenheit_to_celsius(t), 1), "°C\n")
}

# Show the results as a tidy tibble for easy comparison
tibble(
  celsius    = TEMPS_C,
  fahrenheit = celsius_to_fahrenheit(TEMPS_C)
) %>%
  print()
