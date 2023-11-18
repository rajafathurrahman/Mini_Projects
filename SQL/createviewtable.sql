CREATE VIEW HydrologyOLAPRANKView AS
SELECT
   DATE(DateAndTime) AS date,
   StationNumber,
   AVG(WaterLevelM) AS avg_water_level,
   AVG(WaterFlowCuMeterPerSec) AS avg_water_flow
   RANK() OVER (PARTITION BY DATE(DateAndTime) ORDER BY AVG(WaterLevelM) DESC) AS water_level_rank
FROM
   HydrologyFact
GROUP BY
   DATE(DateAndTime),
   WaterLevelM;