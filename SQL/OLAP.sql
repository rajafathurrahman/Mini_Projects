-- RANK
SELECT
    DATE(DateAndTime) AS date,
    StationNumber,
    AVG(WaterLevelM) AS avg_water_level,
    AVG(WaterFlowCuMeterPerSec) AS avg_water_flow,
    RANK() OVER (PARTITION BY DATE(DateAndTime) ORDER BY AVG(WaterLevelM) DESC) AS water_level_rank
FROM
    HydrologyFact
GROUP BY
    DATE(DateAndTime),
    StationNumber;

-- DENSE_RANK
SELECT
    DATE(DateAndTime) AS date,
    StationNumber,
    AVG(WaterLevelM) AS avg_water_level,
    AVG(WaterFlowCuMeterPerSec) AS avg_water_flow,
    DENSE_RANK() OVER (PARTITION BY DATE(DateAndTime) ORDER BY AVG(WaterLevelM) DESC) AS water_level_dense_rank
FROM
    HydrologyFact
GROUP BY
    DATE(DateAndTime),
    StationNumber;

-- ROW_NUMBER
SELECT
    DATE(DateAndTime) AS date,
    StationNumber,
    AVG(WaterLevelM) AS avg_water_level,
    AVG(WaterFlowCuMeterPerSec) AS avg_water_flow,
    ROW_NUMBER() OVER (PARTITION BY DATE(DateAndTime) ORDER BY AVG(WaterLevelM) DESC) AS water_level_row_number
FROM
    HydrologyFact
GROUP BY
    DATE(DateAndTime),
    StationNumber;

-- ROLLUP
SELECT
    DATE(DateAndTime) AS date,
    StationNumber,
    AVG(WaterLevelM) AS avg_water_level,
    AVG(WaterFlowCuMeterPerSec) AS avg_water_flow
FROM
    HydrologyFact
GROUP BY
    DATE(DateAndTime),
    StationNumber
WITH ROLLUP;