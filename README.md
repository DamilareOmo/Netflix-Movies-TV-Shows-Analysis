# Netflix  Movies & TV Shows — Data Analysis

## Overview
This project analyzes Netflix's catalog of movies and TV shows using **Python** (Seaborn, Matplotlib, Pandas) and **R** (base graphics).

---

## Files
| File | Description |
|------|-------------|
| `netflix_data.csv` | The initial raw data source file |
| `netflix_data_analysis.ipynb` | Main Jupyter Notebook — data prep, cleaning, exploration, visualizations |
| `netflix_data_analysis.R` | R chart: Ratings Distribution (base R graphics) |
| `most_watched_genres.png` | Top 15 most common genres (horizontal bar chart) |
| `ratings_distribution.png` | Ratings distribution (bar + pie charts) |
| `content_type_distribution.png` | Movies vs TV Shows count |
| `ratings_R_chart.png` | Ratings distribution produced in R |
| `Netflix_shows_movies_cleaned.csv` | Saved data after cleaning |
| `README.md` | This file |

---

## Requirements

### Python (Jupyter)
Make sure you have the following installed:
```bash
pip install pandas matplotlib seaborn notebook
```

### R
Base R (≥ 4.0) — no additional packages required.

---

## How to Run

### Python (Jupyter Notebook)
1. Place `netflix_data.csv` in the **same folder** as the notebook.
2. Launch Jupyter:
   ```bash
   jupyter notebook
   ```
3. Open `netflix_data_analysis.ipynb` and run **Kernel → Restart & Run All**.  
   Charts will be saved as PNG files in the same folder.

### R Script
1. Place `netflix_data.csv` in the **same folder** as the R script.
2. Run from terminal:
   ```bash
   Rscript netflix_data_analysis.R
   ```
   Or open in RStudio and click **Source**.
---

## Analysis Steps

1. **Data Preparation** — Load CSV and rename to `Netflix_shows_movies`
2. **Data Cleaning** — Fill missing categorical values with `"Unknown"`, impute `date_added` with mode, fill the 10 rows with missing `rating`
3. **Data Exploration** — Shape, `.describe()`, content type split, top ratings
4. **Visualizations (Python)**
   - **Genres chart**: explodes multi-genre strings, counts each genre individually, plots top 10
   - **Ratings chart**: bar chart side-by-side using Seaborn/Matplotlib
   - **Type chart**: Movies vs TV Shows pie chart
5. **R Integration** — Ratings distribution replicated with base R `barplot()`

---

## Key Findings
- **6,234 titles** after cleaning (4,265 Movies / 1,969 TV Shows)
- Most common rating: **TV-MA** (2,027 titles), followed by **TV-14** (1,698)
- Top genres: **International Movies**, **Dramas**, **Comedies**, **Documentaries**
- Content spans releases from **1925 to 2020**
