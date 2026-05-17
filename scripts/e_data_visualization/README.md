# E. Data Visualization

Data visualization turns numbers into charts so patterns, differences, and trends are immediately visible. Both scripts use the built-in `iris` dataset (150 flowers, 3 species, 4 measurements).

**Required packages:** `tidyverse`, `here`

```r
install.packages(c("tidyverse", "here"))
```

Generated plots are saved to the `output/` folder.

## Examples

### data_visualization_1.R — Scatter Plot & Bar Chart
- **Scatter plot:** Sepal length vs. sepal width, coloured by species — shows how the three species cluster differently.
- **Bar chart:** Mean petal length per species — shows Virginica has the longest petals and Setosa the shortest.

**Run:**
```r
source("scripts/e_data_visualization/data_visualization_1.R")
```

**Output:** `output/plot_scatter.png`, `output/plot_bar.png`

### data_visualization_2.R — Boxplot & Histogram
- **Boxplot:** Distribution of petal length per species — shows spread and median for each group.
- **Histogram:** Distribution of sepal length across all flowers — shows the overall shape of the data.

**Run:**
```r
source("scripts/e_data_visualization/data_visualization_2.R")
```

**Output:** `output/plot_boxplot.png`, `output/plot_histogram.png`
