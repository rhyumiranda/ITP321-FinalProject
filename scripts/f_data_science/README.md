# F. Data Science

Data science uses statistics and models to find patterns and make predictions from data. Both scripts use the built-in `iris` dataset (150 flowers, 3 species, 4 measurements).

**Required packages:** `tidyverse`

```r
install.packages("tidyverse")
```

## Examples

### data_science_1.R — Summary Statistics
Loads the iris dataset and computes an overall summary (min, max, mean, median) for every column, then breaks down the mean measurements by species. Shows which species differ most in size.

**Run:**
```r
source("scripts/f_data_science/data_science_1.R")
```

**Output:** printed to the console — take a screenshot of the RStudio Console pane.

### data_science_2.R — Correlation & Linear Regression
- **Correlation:** Measures how strongly sepal length and petal length move together (r ≈ 0.87 — strong positive).
- **Linear regression:** Builds a model to predict petal length from sepal length and reports R² and the slope coefficient.

**Run:**
```r
source("scripts/f_data_science/data_science_2.R")
```

**Output:** printed to the console — take a screenshot of the RStudio Console pane.
