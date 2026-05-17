# =============================================================================
# repeat_1.R — Repeat Loop: Print numbers 1 to N
# Topic: c. Repeat
# =============================================================================

# Defined as a constant so the stop point is easy to change without touching
# the loop body
STOP    <- 5L
counter <- 1L

# repeat is used here because the exit check is naturally at the bottom —
# we always print the current number before deciding whether to stop
repeat {
  cat("Number:", counter, "\n")
  counter <- counter + 1L
  if (counter > STOP) break   # mandatory explicit break stops the loop
}

cat("Done printing 1 to", STOP, "\n")
