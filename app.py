import streamlit as st
import pandas as pd
import psycopg2
import plotly.express as px

st.set_page_config(layout="wide")

conn = psycopg2.connect(
    host="localhost",
    database="anti_abuse",
    user="admin",
    password="password",
    port=5432
)

st.title("Anti-Abuse SQL & Analytics Dashboard")

# KPIs
users = pd.read_sql("SELECT COUNT(*) cnt FROM users", conn)
videos = pd.read_sql("SELECT COUNT(*) cnt FROM videos", conn)
comments = pd.read_sql("SELECT COUNT(*) cnt FROM comments", conn)
clicks = pd.read_sql("SELECT COUNT(*) cnt FROM clicks", conn)

c1, c2, c3, c4 = st.columns(4)

c1.metric("Users", f"{users.cnt.iloc[0]:,}")
c2.metric("Videos", f"{videos.cnt.iloc[0]:,}")
c3.metric("Comments", f"{comments.cnt.iloc[0]:,}")
c4.metric("Clicks", f"{clicks.cnt.iloc[0]:,}")

# Network Badness
badness = pd.read_sql(
    """
    SELECT *
    FROM network_badness_over_time
    """,
    conn
)

st.subheader("Network Badness Over Time")

fig = px.line(
    badness,
    x="day",
    y="bot_percentage"
)

st.plotly_chart(fig, use_container_width=True)

# Top Risk Accounts
risk = pd.read_sql(
    """
    SELECT *
    FROM risk_scores
    ORDER BY badness_score DESC
    LIMIT 20
    """,
    conn
)

st.subheader("Top Suspicious Accounts")

st.dataframe(risk)

# Vulnerability
vuln = pd.read_sql(
    """
    SELECT *
    FROM vulnerability_exploitation
    ORDER BY actions_first_day DESC
    LIMIT 20
    """,
    conn
)

st.subheader("24-Hour Account Exploitation")

fig2 = px.bar(
    vuln,
    x="user_id",
    y="actions_first_day"
)

st.plotly_chart(fig2, use_container_width=True)