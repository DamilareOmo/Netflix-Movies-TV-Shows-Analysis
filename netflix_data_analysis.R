# ==========================================================
# Netflix Movies & TV Shows Analysis (R)
# Author: Sodiq Omoniyi
# One Required Visualization
# ==========================================================

# Install packages if they are not already installed
required_packages <- c("ggplot2", "dplyr", "tidyr")

for (pkg in required_packages) {
  if (!requireNamespace(pkg, quietly = TRUE)) {
    install.packages(pkg)
  }
}

# Load libraries
library(ggplot2)
library(dplyr)
library(tidyr)

# Read the dataset
Netflix_shows_movies <- read.csv(
  path.expand("~/Downloads/netflix_data.csv"),
  stringsAsFactors = FALSE
)

# Split multiple genres into separate rows and count them
genre_counts <- Netflix_shows_movies %>%
  separate_rows(listed_in, sep = ",\\s*") %>%
  count(listed_in, sort = TRUE) %>%
  slice(1:10)

# Create the visualization
ggplot(genre_counts,
       aes(x = reorder(listed_in, n), y = n)) +
  geom_col(fill = "steelblue") +
  coord_flip() +
  labs(
    title = "Top 10 Most Watched Genres on Netflix",
    x = "Genre",
    y = "Number of Titles"
  ) +
  theme_minimal()

# Save the chart
ggsave(
  "most_watched_genres_R.png",
  width = 8,
  height = 6,
  dpi = 300
)