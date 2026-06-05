# Global Cancer Patient Analytics Dashboard (2015–2024)

## Overview

This project analyzes 50,000 global cancer patient records from 2015–2024 to identify trends in cancer types, treatment costs, survival rates, and disease severity. The analysis was performed using Python, SQL, PostgreSQL, and Power BI to transform raw healthcare data into meaningful insights and interactive visualizations.


## Project Structure

```text
global-cancer-analysis/
│
├── data/
├── notebooks/
├── sql/
├── dashboard/
│   ├── Global_cancer_patient_dashboard.pbix
│   └── dashboard_preview.png
│
└── README.md
```

## Dataset

The dataset contains patient demographics, cancer diagnoses, treatment costs, survival information, and lifestyle factors such as smoking, alcohol use, obesity, and air pollution exposure.

Key fields include:

* Patient ID
* Age and Gender
* Country and Year
* Cancer Type and Stage
* Treatment Cost
* Survival Years
* Genetic Risk
* Smoking, Alcohol Use, Obesity, and Air Pollution Scores
* Severity Score



## Tools Used

* Python (Pandas, NumPy, Matplotlib, Seaborn)
* PostgreSQL
* SQL
* Power BI



## Data Preparation

Using Python, the dataset was cleaned by handling missing values, removing duplicates, and creating new features such as:

* Age Group
* Cost Category
* Year Group
* Cancer Category

Additional exploratory analysis was performed to understand data distributions and identify trends across patient demographics and cancer characteristics.



## SQL Analysis

SQL queries were used to analyze:

* Patient and gender distribution
* Cancer type and stage trends
* Treatment costs
* Survival rates
* Country-level insights
* Impact of obesity and air pollution on severity
* Advanced ranking and cost analysis



## Power BI Dashboard

### Dashboard Preview
![Dashboard Preview](dashborad%20page1.png)


Example:

### Dashboard Features

The dashboard includes:
* Total patients, average treatment cost, and severity KPIs
* Cancer type and stage analysis
* Geographic distribution of patients
* Treatment cost comparisons
* Lifestyle factor analysis
* Yearly trends (2015–2024)
* Interactive filters and slicers



## Key Insights
* 50,000 patient records were analyzed across a 10-year period.
* Lung cancer had the highest number of reported cases.
* Liver cancer showed the highest average severity score.
* Survival rates decreased significantly with advanced cancer stages.
* Higher obesity and air pollution levels were linked to greater disease severity.
* Average treatment costs exceeded $52,000 globally.



## How to Run

### Python
```bash
pip install pandas numpy matplotlib seaborn scipy
jupyter notebook notebooks/datacleaninig.ipynb
```

### SQL
Run the queries from `cancer_patient.sql`.

### Power BI
Open `Global_cancer_patient_dashboard.pbix` in Power BI Desktop.

## Author :- **Abhishek Kumar**



