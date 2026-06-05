# 🚃 Integrated Urban Mobility Performance and Sustainability Analytics

---

<img src="https://img.freepik.com/premium-photo/autonomous-vehicles-harmonizing-with-green-urban-mobility-sustainable-smart-city_38013-22785.jpg?w=1380" width="100%">

## Project Overview

Modern cities generate enormous volumes of mobility data from road traffic sensors, public transportation systems, and shared micromobility services. However, these transportation domains are often analyzed independently, limiting the ability of city planners and policymakers to understand the broader mobility ecosystem and make coordinated infrastructure decisions.

This project develops an integrated urban mobility analytics framework that combines traffic operations, public transit performance, and micromobility usage across six smart cities: Stockholm, Oslo, Copenhagen, Helsinki, Gothenburg, and Baku.

Using Microsoft SQL Server for data preparation and Power BI for business intelligence reporting, the project explores congestion patterns, transportation efficiency, mobility behavior, and sustainability outcomes to support data-driven urban planning.

The objective is to demonstrate how integrated mobility analytics can help cities improve transportation efficiency, reduce congestion, strengthen public transit performance, and accelerate sustainability initiatives.

---

# 1. Business Objectives

This project aims to evaluate urban mobility performance across six cities by integrating traffic, public transit, and micromobility data into a unified analytical framework.

The analysis focuses on four key business questions:

1. How do congestion patterns vary across cities, districts, and time periods?
2. How effectively do public transportation systems support urban mobility demand?
3. What role does micromobility play in short-distance and last-mile transportation?
4. Which cities demonstrate the strongest sustainability performance through transit adoption, EV usage, and carbon reduction?

---

# 2. Dataset Overview

The dataset contains over **450,000 urban mobility records** collected between **2023 and 2025** across six cities:

- Stockholm
- Oslo
- Copenhagen
- Helsinki
- Gothenburg
- Baku

The analysis combines three transportation domains:

| Dataset | Records |
|----------|----------|
| Traffic Flow Sensors | 200,000 |
| Public Transit Ridership | 149,992 |
| Micromobility Trips | 100,000 |

The data captures traffic conditions, public transportation performance, micromobility usage, and sustainability indicators, providing a comprehensive view of urban mobility ecosystems.

---

# 3. Project Workflow

```text
Raw Mobility Data
        ↓
Data Quality Assessment (SQL Server)
        ↓
Data Cleaning & Validation
        ↓
Feature Engineering
        ↓
Exploratory Data Analysis
        ↓
Interactive Dashboard Development (Power BI)
        ↓
Business Insights & Recommendations
```

### Tools Used

| Tool | Purpose |
|--------|---------|
| ![SQL Server](https://img.shields.io/badge/MS_SQL_Server-CC2927?style=flat-square&logo=microsoftsqlserver&logoColor=white) | Data validation, cleaning, transformation, and feature engineering |
| ![Power BI](https://img.shields.io/badge/Power_BI-F2C811?style=flat-square&logo=powerbi&logoColor=black) | Interactive dashboard development and business intelligence reporting |

---

# 4. Executive Summary

<img src="dashboard preview/Executive Summary.png" width="100%">

The integrated analysis reveals strong relationships between traffic conditions, public The analysis highlights the scale and diversity of urban mobility activity across six cities between 2023 and 2025, capturing over 56 million traffic observations, 4 billion public transit passenger movements, and 100,000 micromobility trips.

Public transportation remains the dominant mobility mode within the ecosystem. Metro services account for more than 85% of total ridership, significantly outperforming tram, commuter rail, bus, and ferry networks, emphasizing the critical role of high-capacity transit systems in supporting urban travel demand.

Micromobility services complement the transportation network by facilitating short-distance urban trips. E-scooters represent more than half of all micromobility usage, followed by city bikes and e-bikes, indicating strong adoption of flexible and sustainable transportation alternatives.

Together, these findings suggest that efficient urban mobility depends on a combination of high-capacity public transit systems and growing shared mobility services, both of which contribute to reducing dependence on private vehicles.

---

# 5. Analytical Findings

## 5.1. Traffic & Congestion Analysis

<img src="dashboard preview/Traffic and Congestion Analysis.png" width="100%">

The analysis reveals clear rush-hour congestion patterns with two recurring peaks occurring during morning and evening commuting periods.

Traffic Density vs Speed analysis demonstrates a strong inverse relationship between traffic density and travel speed. Higher-capacity road types such as motorways and expressways maintain better performance under increasing traffic loads, while local roads experience faster deterioration.

Weather conditions further influence traffic operations. Rain and adverse weather generally increase congestion levels while reducing average travel speed across all cities.

District-level analysis identifies recurring congestion hotspots that can support targeted infrastructure investment and traffic management initiatives.

---

## 5.2. Public Transit Performance

<img src="dashboard preview/Public Transit Performance.png" width="100%">

Metro systems dominate passenger demand across the transportation network, carrying the majority of ridership while also contributing the largest share of carbon reduction.

Transit reliability remains consistently high across all transportation modes, with On-Time Performance exceeding 90% in most cases.

The relationship between ridership and service reliability indicates that passengers tend to favor transit systems offering both high capacity and dependable service.

---

## 5.3. Micromobility Analytics

<img src="dashboard preview/Micromobility Analytics.png" width="100%">

Micromobility usage is heavily concentrated in e-scooters and city bikes, highlighting strong adoption of shared mobility solutions for short-distance travel.

Most trips are relatively short and occur during commuting periods, supporting the role of micromobility as a first-mile and last-mile transportation solution.

Safety incidents remain relatively rare, indicating strong operational safety across the mobility ecosystem.

The relationship between distance and trip cost demonstrates clear pricing structures across vehicle types and usage patterns.

---

## 5.4. Sustainability Analytics

<img src="dashboard preview/Sustainability Analytics.png" width="100%">

Sustainability performance varies across cities, driven by differences in public transit utilization and electric vehicle adoption.

Cities with stronger EV adoption generally achieve better environmental outcomes, while high-capacity transit systems remain the largest contributors to carbon reduction.

The opportunity matrix highlights cities with strong sustainability performance as well as locations where additional investment could generate meaningful improvements.

---

# 6. Key Business Insights

### Insight 1: Congestion Is Highly Concentrated During Peak Hours

Traffic conditions deteriorate significantly during morning and evening commuting periods, creating recurring bottlenecks across major districts.

### Insight 2: Public Transit Is The Largest Contributor To Sustainable Mobility

Metro and rail systems transport the majority of passengers while generating the highest carbon reduction impact.

### Insight 3: Micromobility Complements Traditional Transportation

Shared mobility services are primarily used for short-distance urban travel and first-mile/last-mile connectivity.

### Insight 4: Sustainability Performance Varies Across Cities

Cities with stronger EV adoption and public transit utilization demonstrate superior sustainability outcomes.

### Insight 5: Integrated Mobility Systems Deliver The Greatest Impact

The combination of public transit, micromobility services, and EV adoption creates the strongest long-term sustainability performance.

---

# 7. Business Recommendations

### Improve Congestion Management

Deploy adaptive traffic management strategies and prioritize congestion mitigation initiatives in high-risk districts.

### Strengthen Public Transit Adoption

Improve transit accessibility, reliability, and network connectivity to encourage modal shift away from private vehicles.

### Expand Micromobility Infrastructure

Increase investment in cycling lanes, parking facilities, and shared mobility infrastructure to support first-mile and last-mile travel.

### Accelerate EV Adoption

Expand charging infrastructure and develop policies that encourage electric vehicle usage in lower-performing cities.

#### Promote Integrated Mobility Planning

Coordinate traffic, transit, and micromobility systems through unified mobility strategies and data-driven urban planning initiatives.


---

# 8. Future Enhancements

Potential future developments include:

- Traffic Volume Forecasting
- Congestion Prediction Models
- Public Transit Demand Forecasting
- Micromobility Demand Prediction
- Real-Time Mobility Monitoring
- Smart City Decision Support Systems
- Mobility Digital Twin Development
- AI-Driven Urban Mobility Optimization

---

## Author

**Minh Nguyen** 🐧

---

## Connect With Me

- LinkedIn: https://www.linkedin.com/in/minh-nguyen-9016a627a/
- Email: minhnguyen29p304@gmail.com

---

⭐ Nothing is impossible 💫 Learn, learn more, learn forever
