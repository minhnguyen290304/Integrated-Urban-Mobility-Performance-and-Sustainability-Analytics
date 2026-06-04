-- PHASE 0: CREATE DATABASE AND LOAD DATASETS

CREATE DATABASE UrbanMobility;
GO

USE UrbanMobility;

-- PHASE 1: DATA PROFILING & DATA QUALITY ASSESSMENT

-- 1. TRAFFIC_RAW
-- 1.1 Row Count

SELECT COUNT(*) AS total_rows
FROM traffic_raw;

SELECT TOP 10 *
FROM traffic_raw;

-- 1.2 Duplicate Check

SELECT
    *,
    data_quality_flag,
    COUNT(*) AS duplicate_count
FROM traffic_raw
GROUP BY
    sensor_id,
    city,
    country,
    district,
    [timestamp],
    [date],
    hour,
    day_of_week,
    is_weekend,
    is_public_holiday,
    season,
    latitude,
    longitude,
    road_type,
    speed_limit_kmh,
    lane_count,
    vehicle_count_15min,
    avg_speed_kmh,
    congestion_level,
    occupancy_rate,
    ev_count_15min,
    truck_count_15min,
    temperature_c,
    precipitation_mm,
    weather_condition,
    incident_type,
    ai_predicted_volume,
    ai_predicted_congestion,
    ai_model_version,
    data_quality_flag,
    year
HAVING COUNT(*) > 1;

-- 1.3 Missing Values

SELECT
    SUM(CASE WHEN sensor_id IS NULL THEN 1 ELSE 0 END) AS sensor_id_null,
    SUM(CASE WHEN city IS NULL THEN 1 ELSE 0 END) AS city_null,
    SUM(CASE WHEN district IS NULL THEN 1 ELSE 0 END) AS district_null,
    SUM(CASE WHEN vehicle_count_15min IS NULL THEN 1 ELSE 0 END) AS vehicle_null,
    SUM(CASE WHEN avg_speed_kmh IS NULL THEN 1 ELSE 0 END) AS speed_null,
    SUM(CASE WHEN congestion_level IS NULL THEN 1 ELSE 0 END) AS congestion_null,
    SUM(CASE WHEN occupancy_rate IS NULL THEN 1 ELSE 0 END) AS occupancy_null,
    SUM(CASE WHEN ev_count_15min IS NULL THEN 1 ELSE 0 END) AS ev_null,
    SUM(CASE WHEN truck_count_15min IS NULL THEN 1 ELSE 0 END) AS truck_null,
    SUM(CASE WHEN temperature_c IS NULL THEN 1 ELSE 0 END) AS temp_null,
    SUM(CASE WHEN precipitation_mm IS NULL THEN 1 ELSE 0 END) AS rain_null,
    SUM(CASE WHEN weather_condition IS NULL THEN 1 ELSE 0 END) AS weather_null,
    SUM(CASE WHEN incident_type IS NULL THEN 1 ELSE 0 END) AS incident_null,
    SUM(CASE WHEN ai_predicted_volume IS NULL THEN 1 ELSE 0 END) AS ai_volume_null
FROM traffic_raw;

-- 1.4 Numeric Profiling

SELECT
    MIN(vehicle_count_15min) AS min_vehicle,
    MAX(vehicle_count_15min) AS max_vehicle,
    AVG(vehicle_count_15min) AS avg_vehicle,

    MIN(avg_speed_kmh) AS min_speed,
    MAX(avg_speed_kmh) AS max_speed,
    AVG(avg_speed_kmh) AS avg_speed,

    MIN(occupancy_rate) AS min_occ,
    MAX(occupancy_rate) AS max_occ,

    MIN(ev_count_15min) AS min_ev,
    MAX(ev_count_15min) AS max_ev,

    MIN(truck_count_15min) AS min_truck,
    MAX(truck_count_15min) AS max_truck,

    MIN(temperature_c) AS min_temp,
    MAX(temperature_c) AS max_temp,

    MIN(precipitation_mm) AS min_rain,
    MAX(precipitation_mm) AS max_rain
FROM traffic_raw;


-- 1.5 Category Values

SELECT DISTINCT congestion_level
FROM traffic_raw;

SELECT DISTINCT road_type
FROM traffic_raw;

SELECT DISTINCT weather_condition
FROM traffic_raw;

SELECT DISTINCT season
FROM traffic_raw;

SELECT DISTINCT incident_type
FROM traffic_raw;



-- 2. TRANSIT_RAW

-- 2.1 Row Count

SELECT COUNT(*) AS total_rows
FROM transit_raw;

-- 2.2. Duplicate Check

SELECT
    record_id,
    COUNT(*) AS duplicate_count
FROM transit_raw
GROUP BY record_id
HAVING COUNT(*) > 1;

-- 2.3 Missing Values

SELECT
    SUM(CASE WHEN daily_boardings IS NULL THEN 1 ELSE 0 END) AS boarding_null,
    SUM(CASE WHEN daily_alightings IS NULL THEN 1 ELSE 0 END) AS alighting_null,
    SUM(CASE WHEN on_time_performance IS NULL THEN 1 ELSE 0 END) AS otp_null,
    SUM(CASE WHEN avg_delay_minutes IS NULL THEN 1 ELSE 0 END) AS delay_null,
    SUM(CASE WHEN daily_revenue_local IS NULL THEN 1 ELSE 0 END) AS revenue_null,
    SUM(CASE WHEN co2_saved_kg IS NULL THEN 1 ELSE 0 END) AS co2_null
FROM transit_raw;


-- 2.4. Numeric Profiling

SELECT
    MIN(daily_boardings) as min_daily_boardings,
    MAX(daily_boardings) as max_daily_boardings,

    MIN(daily_alightings) as min_daily_alightings,
    MAX(daily_alightings) as max_daily_alightings,

    MIN(peak_hour_utilization) as min_peak_hour_utilization,
    MAX(peak_hour_utilization) as max_peak_hour_utilization,

    MIN(avg_delay_minutes) as min_avg_delay_minutes,
    MAX(avg_delay_minutes) as max_avg_delay_minutes,

    MIN(daily_revenue_local) as min_daily_revenue_local,
    MAX(daily_revenue_local) as max_daily_revenue_local,

    MIN(co2_saved_kg) as min_co2_saved_kg,
    MAX(co2_saved_kg) as max_co2_saved_kg
FROM transit_raw;


-- 2.5 Category 

SELECT DISTINCT transit_type
FROM transit_raw;

SELECT DISTINCT disruption_event
FROM transit_raw;

SELECT DISTINCT fare_zone
FROM transit_raw;


-- 3. MICROMOBILITY_RAW

-- 3.1 Row Count

SELECT COUNT(*) AS total_rows
FROM micromobility_raw;

SELECT TOP 10 *
FROM micromobility_raw;

-- 3.2 Duplicate Check

SELECT
    trip_id,
    COUNT(*) AS duplicate_count
FROM micromobility_raw
GROUP BY trip_id
HAVING COUNT(*) > 1;

-- 3.3 Missing Values


SELECT
    SUM(CASE WHEN distance_km IS NULL THEN 1 ELSE 0 END) AS distance_null,
    SUM(CASE WHEN duration_minutes IS NULL THEN 1 ELSE 0 END) AS duration_null,
    SUM(CASE WHEN purpose IS NULL THEN 1 ELSE 0 END) AS purpose_null,
    SUM(CASE WHEN battery_pct_start IS NULL THEN 1 ELSE 0 END) AS battery_start_null,
    SUM(CASE WHEN battery_pct_end IS NULL THEN 1 ELSE 0 END) AS battery_end_null,
    SUM(CASE WHEN trip_cost_local IS NULL THEN 1 ELSE 0 END) AS cost_null,
    SUM(CASE WHEN co2_saved_vs_car_g IS NULL THEN 1 ELSE 0 END) AS co2_null,
    SUM(CASE WHEN incident_reported IS NULL THEN 1 ELSE 0 END) AS incident_null,
    SUM(CASE WHEN helmet_detected IS NULL THEN 1 ELSE 0 END) AS helmet_null
FROM micromobility_raw;

SELECT
    COUNT(*) AS total_rows,
    SUM(CASE WHEN incident_reported IS NULL THEN 1 ELSE 0 END) AS incident_null,
    SUM(CASE WHEN helmet_detected IS NULL THEN 1 ELSE 0 END) AS helmet_null
FROM micromobility_raw;

UPDATE micromobility_raw
SET incident_reported = 'none'
WHERE incident_reported IS NULL;


-- 3.4 Numeric Profiling

SELECT
    MIN(duration_minutes) as min_duration_minutes,
    MAX(duration_minutes) as max_duration_minutes,
    AVG(duration_minutes) as avg_duration_minutes,

    MIN(distance_km) as min_distance_km,
    MAX(distance_km) as max_distance_km,
    AVG(distance_km) as avg_distance_km,

    MIN(battery_pct_start) as min_battery_pct_start,
    MAX(battery_pct_start) as max_battery_pct_start,

    MIN(battery_pct_end) as min_battery_pct_end,
    MAX(battery_pct_end) as max_battery_pct_end,

    MIN(trip_cost_local) as min_trip_cost_local,
    MAX(trip_cost_local) as max_trip_cost_local,

    MIN(co2_saved_vs_car_g) as min_co2_saved_vs_car_g,
    MAX(co2_saved_vs_car_g) as max_co2_saved_vs_car_g
FROM micromobility_raw;


-- 3.5 Category Values

SELECT DISTINCT vehicle_type
FROM micromobility_raw;

SELECT DISTINCT purpose
FROM micromobility_raw;

SELECT DISTINCT payment_method
FROM micromobility_raw;

SELECT DISTINCT incident_reported
FROM micromobility_raw;


-- PHASE 2 — DATA CLEANING & FEATURE ENGINEERING

-- 2.1. DATA CLEANING

/*
Phase 1 shows:

No serious duplicates
No serious NULLs
No unreasonable values

Therefore, the data from the raw file is converted to clean.
*/

SELECT *
INTO traffic_clean
FROM traffic_raw;


SELECT *
INTO transit_clean
FROM transit_raw;


SELECT *
INTO micromobility_clean
FROM micromobility_raw;


-- 2.2 - FEATURE ENGINEERING (TRAFFIC)

-- Peak Hour Flag

ALTER TABLE traffic_clean
ADD is_peak_hour BIT;

UPDATE traffic_clean
SET is_peak_hour =
CASE
    WHEN hour IN (7,8,9,17,18,19)
    THEN 1
    ELSE 0
END;


-- Congestion Score

ALTER TABLE traffic_clean
ADD congestion_score INT;

UPDATE traffic_clean
SET congestion_score =
CASE
    WHEN congestion_level='free_flow' THEN 1
    WHEN congestion_level='light' THEN 2
    WHEN congestion_level='moderate' THEN 3
    WHEN congestion_level='heavy' THEN 4
END;


-- EV Adoption Rate

ALTER TABLE traffic_clean
ADD ev_ratio FLOAT;

UPDATE traffic_clean
SET ev_ratio =
CAST(ev_count_15min AS FLOAT)
/
NULLIF(vehicle_count_15min,0);


-- Truck Ratio

ALTER TABLE traffic_clean
ADD truck_ratio FLOAT;

UPDATE traffic_clean
SET truck_ratio =
CAST(truck_count_15min AS FLOAT)
/
NULLIF(vehicle_count_15min,0);


-- Weather Severity

ALTER TABLE traffic_clean
ADD weather_severity VARCHAR(20);

UPDATE traffic_clean
SET weather_severity =
CASE
    WHEN precipitation_mm = 0 THEN 'No Rain'
    WHEN precipitation_mm <= 2 THEN 'Light Rain'
    WHEN precipitation_mm <= 10 THEN 'Moderate Rain'
    ELSE 'Heavy Rain'
END;



-- 2.3 - FEATURE ENGINEERING (TRANSIT)

-- Utilization Category

ALTER TABLE transit_clean
ADD utilization_category VARCHAR(20);

UPDATE transit_clean
SET utilization_category =
CASE
    WHEN peak_hour_utilization < 0.7
        THEN 'Low'

    WHEN peak_hour_utilization < 1
        THEN 'Normal'

    ELSE 'Overcrowded'
END;


-- Delay Category

ALTER TABLE transit_clean
ADD delay_category VARCHAR(20);

UPDATE transit_clean
SET delay_category =
CASE
    WHEN avg_delay_minutes < 5
        THEN 'Low Delay'

    WHEN avg_delay_minutes < 10
        THEN 'Moderate Delay'

    ELSE 'High Delay'
END;



-- 2.4 - FEATURE ENGINEERING (MICROMOBILITY)

-- Trip Duration Category

ALTER TABLE micromobility_clean
ADD duration_category VARCHAR(20);

UPDATE micromobility_clean
SET duration_category =
CASE
    WHEN duration_minutes < 10
        THEN 'Short'

    WHEN duration_minutes < 30
        THEN 'Medium'

    ELSE 'Long'
END;


-- Distance Category

ALTER TABLE micromobility_clean
ADD distance_category VARCHAR(20);

UPDATE micromobility_clean
SET distance_category =
CASE
    WHEN distance_km < 2
        THEN 'Short'

    WHEN distance_km < 5
        THEN 'Medium'

    ELSE 'Long'
END;


-- Battery Consumption

ALTER TABLE micromobility_clean
ADD battery_used FLOAT;

UPDATE micromobility_clean
SET battery_used =
battery_pct_start - battery_pct_end;


-- Cost Per KM

ALTER TABLE micromobility_clean
ADD cost_per_km FLOAT;

UPDATE micromobility_clean
SET cost_per_km =
trip_cost_local
/
NULLIF(distance_km,0);


-- 2.5 - VALIDATE

SELECT TOP 10 *
FROM traffic_clean;

SELECT TOP 10 *
FROM transit_clean;

SELECT TOP 10 *
FROM micromobility_clean;


SELECT DISTINCT incident_reported
FROM micromobility_clean;

SELECT DISTINCT helmet_detected
FROM micromobility_clean;

SELECT DISTINCT parked_correctly
FROM micromobility_clean;


-- CREATE JOIN TABLE Mobility Summary

SELECT
    city,

    AVG(congestion_score) AS avg_congestion,

    AVG(ev_ratio) AS avg_ev_ratio

INTO traffic_city_summary

FROM traffic_clean

GROUP BY city;



SELECT
    city,

    SUM(daily_boardings) AS total_ridership,

    SUM(co2_saved_kg) AS transit_co2

INTO transit_city_summary

FROM transit_clean

GROUP BY city;



SELECT
    city,

    COUNT(*) AS micro_trips,

    SUM(co2_saved_vs_car_g)/1000.0 AS micro_co2

INTO micro_city_summary

FROM micromobility_clean

GROUP BY city;


SELECT
    t.city,

    t.avg_congestion,

    t.avg_ev_ratio,

    tr.total_ridership,

    tr.transit_co2,

    m.micro_trips,

    m.micro_co2

INTO mobility_city_summary

FROM traffic_city_summary t

LEFT JOIN transit_city_summary tr
    ON t.city = tr.city

LEFT JOIN micro_city_summary m
    ON t.city = m.city;


SELECT *
FROM mobility_city_summary





