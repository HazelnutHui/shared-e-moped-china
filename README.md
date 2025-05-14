# Shared E-Moped Usage Analysis in China

Capstone Project for the Google Data Analytics Certificate  
Analyzing peak hours and high-frequency station usage of shared electric mopeds in Chinese cities to inform operational decisions.

---

## Project Overview

This project explores the spatial and temporal patterns of shared electric moped usage in Chinese cities. The primary goal is to identify peak usage hours, high-frequency station pairs, and user behavior differences by time of day.

The findings support operational decisions such as station placement, fleet redistribution, and service availability planning. These insights can help shared mobility companies improve resource allocation and service delivery during peak times and in high-demand areas.

The analysis follows the six-step Google data analytics process: Ask, Prepare, Process, Analyze, Share, and Act.

---

## Project Structure

- `data/` – Simulated ride data in CSV format (v2)  
- `visualizations/` – Tableau dashboard screenshots or links (planned)  
- `README.md` – Project documentation  
- `notebooks/` – Optional code notebooks (Python or R)  
- `sql/` – SQL queries for time and station analysis (to be added)

---

## Tools and Technologies

- Excel or Google Sheets – data cleaning and summarization  
- SQL – querying, aggregation, and time-based analysis  
- Tableau or Tableau Public – interactive visualizations  
- GitHub – documentation and project hosting

---

## Key Questions

- What hours of the day have the highest ride volume across all users?  
- Do peak hours differ between casual and subscriber users?  
- What are the most frequently used start and end stations?  
- Which station-to-station routes are most common?  
- What days of the week see the most usage and longest rides?

---

## Visualizations

This dashboard presents key temporal and spatial insights derived from the simulated e-moped ride dataset.

**Key charts include:**

- **Peak Hour Usage by User Type:** Identifies high-demand time slots and compares usage patterns between casual and subscriber users.
- **Top 5 Start and End Stations:** Highlights the most frequently used pickup and drop-off locations across the city.
- **Most Common Routes:** Displays the most frequent origin-destination pairs, providing insights for potential direct route optimization.
- **Ride Volume by Day of the Week:** Reveals weekly usage patterns and helps identify the busiest operating days.
- **Average Ride Duration by Day:** Compares ride length by weekday to uncover behavioral trends across time.

> A full Tableau dashboard (to be linked) will be added here upon publication.


---

## Dataset Overview

The dataset includes 350 simulated ride records for shared electric mopeds in a Chinese city. It contains 25 unique station names and incorporates realistic peak-hour bias to reflect common commuting patterns.

Key fields include:
- ride ID  
- user type (casual or subscriber)  
- start and end times  
- ride duration in minutes  
- start and end station names (in pinyin)  
- vehicle type  
- city  
- day of week  
- hour of day

---

## Author

Hui Wang  
Google Data Analytics Certificate · University of Utah  
GitHub: [HazelnutHui](https://github.com/HazelnutHui)  
LinkedIn: [www.linkedin.com/in/hui-wang-823650320](https://www.linkedin.com/in/hui-wang-823650320)

---

## Status

- [x] Data uploaded (v2, 350 records with peak-hour simulation)  
- [x] Project scope defined and documented  
- [x] SQL query file added to repository  
- [x] Visualizations completed (Tableau)  
- [x] Final summary and recommendations documented
