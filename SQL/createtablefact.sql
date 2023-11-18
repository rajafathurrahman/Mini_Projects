-- Create TimeDimension table
CREATE TABLE TimeDimension (
    DateAndTime DATETIME PRIMARY KEY
    -- Add other time-related attributes as needed
);

-- Create StationDimension table
CREATE TABLE StationDimension (
    StationNumber VARCHAR(50) PRIMARY KEY,
    Latitude DOUBLE,
    Longitude DOUBLE,
    StationLocation VARCHAR(50),
    GeometryPoint VARCHAR(50)
    -- Add other station-related attributes as needed
);

-- Create HydrologyFact table
CREATE TABLE HydrologyFact (
    FactID INT PRIMARY KEY AUTO_INCREMENT,
    StationNumber VARCHAR(50),
    DateAndTime DATETIME,
    WaterLevelM FLOAT,
    WaterFlowCuMeterPerSec DOUBLE,
    CONSTRAINT fk_Station FOREIGN KEY (StationNumber) REFERENCES StationDimension(StationNumber),
    CONSTRAINT fk_Time FOREIGN KEY (DateAndTime) REFERENCES TimeDimension(DateAndTime)
    -- Add other measures or attributes as needed
);