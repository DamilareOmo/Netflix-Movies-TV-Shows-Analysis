# Netflix-Movies-TV-Shows-Analysis
# Netflix Shows & Movies — Data Analysis

## Overview
This project analyzes Netflix's catalog of movies and TV shows using **Python** (Seaborn, Matplotlib, Pandas) and **R** (base graphics).

---

## Files
| File | Description |
|------|-------------|
| `netflix_analysis.py` | Full Python analysis: data prep, cleaning, exploration, visualizations |
| `netflix_analysis.R` | R chart: Ratings Distribution (base R graphics) |
| `genres_chart.png` | Top 15 most common genres (horizontal bar chart) |
| `ratings_chart.png` | Ratings distribution (bar + pie charts) |
| `type_chart.png` | Movies vs TV Shows count |
| `ratings_R_chart.png` | Ratings distribution produced in R |
| `README.md` | This file |

---

## Requirements

### Python
```
pip install pandas matplotlib seaborn
```

### R
Base R (≥ 4.0) — no additional packages required.

---

## How to Run

### Python
```bash
python3 netflix_analysis.py
```

### R
```bash
Rscript netflix_analysis.R
```

---

## Analysis Steps

1. **Data Preparation** — Load CSV and rename to `Netflix_shows_movies`
2. **Data Cleaning** — Fill missing categorical values with `"Unknown"`, impute `date_added` with mode, drop the 10 rows with missing `rating`
3. **Data Exploration** — Shape, `.describe()`, content type split, top ratings
4. **Visualizations (Python)**
   - **Genres chart**: explodes multi-genre strings, counts each genre individually, plots top 15
   - **Ratings chart**: bar + pie side-by-side using Seaborn/Matplotlib
   - **Type chart**: Movies vs TV Shows bar chart
5. **R Integration** — Ratings distribution replicated with base R `barplot()`

---

## Key Findings
- **6,224 titles** after cleaning (4,257 Movies / 1,967 TV Shows)
- Most common rating: **TV-MA** (2,027 titles), followed by **TV-14** (1,698)
- Top genres: **International Movies**, **Dramas**, **Comedies**, **Documentaries**
- Content spans releases from **1925 to 2020**
