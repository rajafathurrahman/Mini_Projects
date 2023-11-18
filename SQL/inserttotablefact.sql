INSERT INTO HydrologyFact (StationNumber, DateAndTime, WaterLevelM, WaterFlowCuMeterPerSec)
SELECT
    w.station_number AS StationNumber,
    w.date_and_time AS DateAndTime,
    w.water_level_m AS WaterLevelM,
    s.Latitude as Latitute,
    s.Longitude as Longitude,
    w.water_flow_cu_meter_per_sec AS WaterFlowCuMeterPerSec
FROM
    etl_waterflow w
JOIN
    etl_waterflow_station_list s ON w.station_number = s.station_number;