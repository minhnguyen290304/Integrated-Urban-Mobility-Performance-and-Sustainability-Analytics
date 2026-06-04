# Integrated Urban Mobility Performance and Sustainability Analytics

## Project Overview

Urban transportation systems generate massive volumes of data from road traffic sensors, public transit networks, and shared micromobility services. However, these data sources are often analyzed separately, limiting the ability to understand the broader mobility ecosystem.

This project develops an end-to-end analytics solution that integrates traffic operations, public transit performance, and micromobility usage into a unified Smart City analytics framework.

Using SQL Server for data processing and Power BI for visualization, the project provides actionable insights into congestion patterns, transportation efficiency, sustainability outcomes, and urban mobility behavior across multiple European cities.

---

## Business Objectives

### Traffic & Congestion

- Which districts experience the highest traffic congestion?
- How does traffic density impact vehicle speed?
- How do weather conditions affect congestion levels?
- What are the peak-hour traffic patterns?

### Public Transit Performance

- Which transit modes serve the largest passenger volumes?
- How reliable are different transit systems?
- How does service reliability impact ridership?
- Which transit modes contribute most to CO₂ reduction?

### Micromobility Analytics

- What are the dominant vehicle types and trip purposes?
- How does mobility demand vary throughout the day?
- What safety incidents occur most frequently?
- How do trip costs vary by distance and vehicle type?

### Sustainability & Smart City Planning

- Which cities demonstrate the strongest sustainability performance?
- How does EV adoption differ across cities?
- Which locations offer the greatest opportunities for sustainable mobility investments?
- How can transportation systems contribute to carbon reduction goals?

---

## Dataset Overview

### 1. Traffic Flow Sensors

- 200,000 observations
- 15-minute traffic sensor records
- Traffic volume
- Vehicle speed
- Congestion level
- EV counts
- Weather conditions
- Road characteristics

### 2. Public Transit Ridership

- 149,992 records
- Metro, tram, bus, rail and ferry operations
- Ridership metrics
- Delay metrics
- On-time performance
- Revenue indicators
- CO₂ savings

### 3. Micromobility Trips

- 100,000 trip-level records
- E-scooters
- E-bikes
- City bikes
- Cargo bikes
- Rider behavior
- Trip costs
- Safety incidents
- Environmental impact

---

## Project Workflow

```text
Raw Data
↓
Data Quality Assessment (SQL Server)
↓
Data Cleaning (SQL Server)
↓
Feature Engineering (SQL Server)
↓
Interactive Dashboard Development (Power BI)
↓
Business Insights & Recommendations
```

---

## Phase 1 — Data Quality Assessment

Performed comprehensive data profiling in SQL Server:

- Duplicate detection
- Missing value assessment
- Data type validation
- Range checks
- Consistency checks
- Outlier identification

---

## Phase 2 — Data Cleaning & Feature Engineering

### Traffic Features

- Peak Hour Flag
- Congestion Score
- EV Adoption Ratio
- Truck Ratio
- Weather Severity Category
- Traffic Density

### Public Transit Features

- Passenger Balance
- Utilization Category
- Delay Category

### Micromobility Features

- Distance Category
- Duration Category
- Cost Per KM
- Battery Consumption
- Trip Time Segment

---

## Phase 3 — Exploratory Analytics in Power BI

Interactive dashboards were developed to analyze:

- Traffic Operations
- Transit Performance
- Micromobility Usage
- Sustainability Outcomes

---

## Dashboard Pages

### Executive Summary

Provides a high-level overview of urban mobility performance.

**KPIs**

- Total Traffic Volume
- Total Ridership
- Total Mobility Trips
- Total CO₂ Saved

**Visualizations**

- Traffic Volume Trend
- Transit Type Share
- Vehicle Type Share

---

### Traffic & Congestion Analysis

Analyzes traffic operations and congestion behavior.

**KPIs**

- Average Congestion Score
- Average Speed
- Peak Hour Traffic Volume
- EV Adoption Rate

**Visualizations**

- Hourly Congestion Score
- Traffic Density vs Speed Performance
- Top Congested Districts
- Impact of Weather on Traffic Conditions

---

### Public Transit Performance

Evaluates efficiency and reliability of public transportation.

**KPIs**

- Total Ridership
- Average OTP
- Average Delay
- Transit CO₂ Saved

**Visualizations**

- Transit Mode Ridership
- On-Time Performance by Transit Mode
- Average Delay by Transit Mode
- CO₂ Saved by Transit Mode
- Ridership vs Service Reliability

---

### Micromobility Analytics

Examines user behavior and mobility patterns.

**KPIs**

- Total Trips
- Average Distance
- Average Duration
- Micro CO₂ Saved

**Visualizations**

- Vehicle Type Share
- Purpose Distribution
- Time-of-Day Usage
- Distance Category Distribution
- Safety Analysis
- Cost vs Distance

---

### Sustainability Analytics

Measures environmental impact and sustainable mobility adoption.

**KPIs**

- Total CO₂ Saved
- EV Adoption Rate
- Total Ridership
- Total Trips

**Visualizations**

- CO₂ Saved by City
- EV Adoption by City
- Opportunity Matrix
- City Sustainability Benchmarking

---

## Key Insights

### Traffic

- Peak congestion occurs during morning and evening commuting periods.
- Higher traffic density significantly reduces average travel speed.
- Weather conditions amplify congestion severity.

### Public Transit

- Metro systems carry the majority of passengers.
- Higher service reliability is associated with stronger ridership performance.
- Public transit contributes substantially to carbon reduction.

### Micromobility

- E-scooters dominate shared mobility usage.
- Commuting and leisure represent the largest trip purposes.
- Most trips are short-distance urban journeys.

### Sustainability

- Significant CO₂ reductions are achieved through public transit and shared mobility.
- EV adoption varies considerably across cities.
- Several cities demonstrate strong potential for further sustainable transportation investments.

---

## Technology Stack

### Database

- Microsoft SQL Server

### Business Intelligence

- Power BI

### Data Processing

- SQL

---

## Repository Structure

```text
Integrated-Urban-Mobility-Performance-and-Sustainability-Analytics/
│
├── datasets/
│
├── sql/
│   ├── 01_data_quality_assessment.sql
│   ├── 02_data_cleaning.sql
│   ├── 03_feature_engineering.sql
│
├── dashboard/
│   ├── executive_summary.png
│   ├── traffic_congestion_analysis.png
│   ├── public_transit_performance.png
│   ├── micromobility_analytics.png
│   └── sustainability_analytics.png
│
├── powerbi/
│   └── Urban_Mobility_Analytics.pbix
│
└── README.md
```

---

## Future Enhancements

Potential future developments include:

- Traffic Volume Forecasting
- Congestion Prediction Models
- Transit Demand Forecasting
- Micromobility Demand Prediction
- Real-Time Mobility Monitoring
- Smart City Decision Support System
- Machine Learning-Based Transportation Optimization

---

## Author

**Nguyen Sang Minh**

Data Analytics | Business Intelligence | SQL | Power BI
