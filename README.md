# Shared E-Moped Usage Dashboard (China)

Capstone project for the Google Data Analytics Certificate  
📍 Topic: Ride behavior analysis of shared electric mopeds in Chinese cities

---

## 📌 Project Overview

This project analyzes simulated ride data from a shared electric moped system in a Chinese city. It follows the six-step Google Data Analytics process: Ask, Prepare, Process, Analyze, Share, and Act.

The objective is to uncover usage patterns, identify peak times, and highlight popular routes and stations to support business decisions like fleet deployment, station optimization, and marketing strategy.

---

## 🔍 Key Business Questions

- What are the peak riding hours for different user types?
- Which start and end stations are used most frequently?
- What routes are most common among all users?
- Do casual and subscriber users ride differently?
- How does ride duration vary across days of the week?

---

## 📊 Interactive Dashboard

👉 [View Tableau Dashboard on Tableau Public](https://public.tableau.com/app/profile/hui.wang3308/viz/E-MopedUsageAnalysisCapstoneforGoogleDataAnalytics/SharedE-MopedUsageDashboard)

📥 Or [Download Tableau Workbook (.twbx)](./visualizations/e_moped_dashboard_final.twbx) to explore it locally using Tableau Desktop or Tableau Public.

The dashboard includes:
- 📈 Peak Hour Usage by User Type  
- 🏁 Top 5 Start and End Stations  
- 🔁 Most Common Routes  
- ⏱ Average Ride Duration by Day of Week

---

## 🧰 Tools and Technologies

- **Excel / Google Sheets** — data cleaning and structuring  
- **Tableau Public** — interactive dashboard creation  
- **GitHub** — documentation and project hosting  
- *(Optional: SQL / Python for deeper exploration)*

---

## 📁 Project Structure

shared-e-moped-china/
├── data/ # Simulated ride dataset (CSV)
├── visualizations/ # Tableau dashboard (.twbx) and screenshots
├── notebooks/ # Optional SQL or Python files
└── README.md # Project documentation (this file)


---

## 📈 Dataset Summary

The dataset includes 100 simulated ride records with the following fields:

- `ride_id` — unique identifier  
- `user_type` — casual or subscriber  
- `start_time`, `end_time`  
- `duration_min` — ride duration in minutes  
- `start_station`, `end_station` (in pinyin)  
- `day_of_week`, `hour_of_day`  
- `city`, `vehicle_type`

---

## 👤 Author

**Hui Wang**  
Google Data Analytics Certificate · University of Utah  
🔗 [GitHub – HazelnutHui](https://github.com/HazelnutHui)  
🔗 [LinkedIn – Hui Wang](https://www.linkedin.com/in/hui-wang-823650320)

---

## ✅ Status

- [x] Data simulated and cleaned  
- [x] Dashboard designed and published  
- [x] `.twbx` workbook uploaded to GitHub  
- [x] README documented  
