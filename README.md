# Anti-Abuse SQL & Analytics Dashboard

## Overview

Built an anti-abuse analytics platform to detect coordinated bot networks, spam campaigns, and product vulnerabilities using PostgreSQL, Docker, Python, and Streamlit.

The project simulates a large-scale social media platform and analyzes over 2 million user events to identify suspicious behavior patterns and abuse trends.

---

## Dataset

Synthetic dataset generated using Python.

| Table    |      Rows |
| -------- | --------: |
| Users    |    10,000 |
| Videos   |    50,000 |
| Comments |   500,000 |
| Clicks   | 2,080,000 |

Injected bot accounts and spam campaigns were added to simulate real-world abuse scenarios.

---

## Technologies

* PostgreSQL
* Docker
* Python
* Pandas
* Streamlit
* Plotly
* SQL
* Google Colab

---

## SQL Techniques Used

* Common Table Expressions (CTEs)
* Window Functions
* Aggregations
* Risk Scoring
* Behavioral Analysis
* View Creation
* Trend Analysis

---

## Key Investigations

### 1. Network Badness Over Time

Tracked the percentage of abusive activity across the platform over time.

### 2. Suspicious Account Detection

Developed a SQL-based risk scoring framework to rank potentially malicious users.

### 3. Product Vulnerability Analysis

Identified excessive user activity occurring within the first 24 hours after account creation.

---

## Key Findings

* Detected 200 coordinated bot accounts.
* Identified spam campaigns through repetitive behavioral patterns.
* Built a risk scoring model for suspicious account ranking.
* Found significant abuse concentrated within the first 24 hours of account creation.
* Visualized abuse trends through an interactive Streamlit dashboard.

---

## Dashboard Screenshots

### Dashboard Overview
<img width="1280" height="583" alt="image" src="https://github.com/user-attachments/assets/8427e2fc-57ec-49a1-bb1e-0280ea8f984f" />
<img width="1280" height="624" alt="image" src="https://github.com/user-attachments/assets/df1f9fee-f32d-4163-b21e-b43828d68ff7" />


### Network Badness Over Time

<img width="1280" height="451" alt="image" src="https://github.com/user-attachments/assets/837b4e23-6b67-4e60-9e33-2dd03e150619" />


### Top Suspicious Accounts
<img width="1280" height="529" alt="image" src="https://github.com/user-attachments/assets/456522af-8ad8-4ba5-8886-d860be203207" />


### 24-Hour Account Exploitation

<img width="1280" height="594" alt="image" src="https://github.com/user-attachments/assets/b2580984-a53d-430c-baa1-9216cf6f9cc7" />


---

## Project Structure

```text
anti-abuse-sql-dashboard/
│
├── dashboard/
│   └── app.py
│
├── notebooks/
│   └── generate_dataset.ipynb
│
├── sql/
│   ├── schema.sql
│   ├── investigations.sql
│   └── views.sql
│
├── screenshots/
│   ├── dashboard_overview.png
│   ├── network_badness.png
│   ├── top_suspicious_accounts.png
│   └── vulnerability_analysis.png
│
├── requirements.txt
├── .gitignore
└── README.md
```

---

## Future Improvements

* Graph-based bot network detection
* Machine learning risk scoring
* Real-time abuse monitoring
* Automated alerting system
* User clustering and community detection

---

## Author

Sree Nihitha Chennupati
