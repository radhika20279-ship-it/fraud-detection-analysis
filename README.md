# 🏦 Financial Fraud Detection Analysis

![Python](https://img.shields.io/badge/Python-3.14-blue) ![PostgreSQL](https://img.shields.io/badge/PostgreSQL-18-blue) ![Tableau](https://img.shields.io/badge/Tableau-Public-orange) ![Status](https://img.shields.io/badge/Status-Completed-green)

---

## 📌 Project Overview

This project performs an end-to-end financial fraud detection analysis on 1.29 million credit card transactions. The goal is to identify fraud patterns, high-risk categories, peak fraud hours, and geographic hotspots — providing actionable business recommendations to reduce financial losses.

---

## 🎯 Problem Statement

Credit card fraud costs businesses billions of dollars every year. With fraud accounting for only 0.58% of all transactions, it is extremely difficult to detect using traditional methods. This project uses data analytics to uncover hidden fraud patterns across time, geography, transaction category, and customer demographics.

---

## 🛠️ Tools & Technologies

| Tool | Purpose |
|------|---------|
| **Python (Pandas, Matplotlib, Seaborn)** | Data cleaning, EDA, and visualizations |
| **PostgreSQL (pgAdmin)** | SQL queries and database analysis |
| **Tableau Public** | Interactive dashboard |
| **Jupyter Notebook** | Analysis environment |
| **GitHub** | Version control and portfolio |

---

## 📊 Dataset

- **Source:** [Credit Card Transactions Fraud Detection Dataset — Kaggle](https://www.kaggle.com/datasets/kartik2112/fraud-detection)
- **Size:** 1,296,675 transactions
- **Period:** January 2019 – December 2020
- **Customers:** 1,000 customers, 800 merchants
- **Key columns:** transaction amount, category, timestamp, location, customer demographics, fraud label

---

## 🔍 Key Insights

### 1️⃣ Fraud Rate
- Only **0.58%** of all transactions are fraudulent (7,506 out of 1,296,675)
- This highlights the need for pattern-based detection rather than volume-based analysis

### 2️⃣ High-Risk Categories
- **Grocery POS** (1,743 cases) and **Shopping Net** (1,713 cases) are the top fraud categories
- Online categories dominate fraud — `shopping_net` and `misc_net` together account for 35% of all fraud cases

### 3️⃣ Fraud Transaction Amounts
- Fraud transactions average **$531** vs **$67** for normal transactions — **7.8x higher**
- Travel fraud averages **$1,051** vs $111 normal — **9x higher**
- High transaction amount is a strong fraud indicator

### 4️⃣ Peak Fraud Hours
- **51% of all fraud** occurs between **10PM–3AM**
- Hour 22 (10PM) = 1,931 cases and Hour 23 (11PM) = 1,904 cases
- Fraudsters deliberately act during low-monitoring hours

### 5️⃣ Geographic Hotspots
- **New York, Texas, and Pennsylvania** are the top 3 states for fraud losses
- Together they account for over **$800,000** in fraudulent transactions

### 6️⃣ Gender Analysis
- Fraud is almost equally split — Male (0.64%) vs Female (0.53%)
- Gender alone is **not** a strong fraud predictor

---

## 💡 Business Recommendations

> **"Implementing real-time fraud monitoring during 10PM–3AM could reduce fraud cases by up to 51%"**

1. **Increase monitoring between 10PM–3AM** — over half of all fraud happens in this window
2. **Flag high-value transactions** above $500 in grocery and online shopping categories
3. **Implement geo-based alerts** for transactions from NY, TX, and PA
4. **Add friction for online transactions** in `shopping_net` and `misc_net` categories

---

## 📈 Dashboard

> 🔗 **[View Live Tableau Dashboard](YOUR_TABLEAU_PUBLIC_LINK_HERE)**

The interactive dashboard includes:
- 🍩 Fraud vs Normal % (Pie Chart)
- 🟦 Fraud by Category (Treemap)
- 🗺️ Fraud by State (Geographic Map)
- 🔥 Fraud by Hour (Heatmap)
- 📊 Fraud by Gender (Bar Chart)

---

## 🗄️ SQL Queries

Six analytical queries written in PostgreSQL:

| Query | Purpose |
|-------|---------|
| Q1 — Overall Fraud Summary | Compare fraud vs normal counts and amounts |
| Q2 — Top 5 Categories | Identify highest fraud categories |
| Q3 — Fraud by Gender | Fraud rate comparison across genders |
| Q4 — Top 10 States | Geographic fraud distribution |
| Q5 — Peak Fraud Hours | Time-based fraud pattern analysis |
| Q6 — High Value Fraud | Transactions above average fraud amount |

---

## 📁 Project Structure

fraud-detection-analysis/
│
├── notebooks/
│ └── fraud_analysis.ipynb
├── sql/
│ └── fraud_queries.sql
├── dashboard/
│ └── tableau_screenshot.png
└── README.md

---

## 🚀 How to Run

1. Download dataset from [Kaggle](https://www.kaggle.com/datasets/kartik2112/fraud-detection)
2. Open `notebooks/fraud_analysis.ipynb` in Jupyter Notebook
3. Run all cells in order
4. For SQL: Import `fraudTrain.csv` into PostgreSQL and run `fraud_queries.sql`
5. For Dashboard: Open Tableau Public link above

---

## 👩‍💻 Author

**Radhika Chaturvedi**
- 📧 [Your Email]
- 💼 [Your LinkedIn]
- 🐙 [Your GitHub Profile]

---

*This project is part of my Data Analyst portfolio.*
