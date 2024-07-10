USE smartcitydb;

-- Load mock city zones into database
LOAD DATA LOCAL INFILE "C:/Users/kdub9/Documents/funny_business/smartCityDb/sql/data/mockdata/MOCK_DATA_ZONES.csv"
INTO TABLE cityzones 
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n';

-- Load mock work orders into database
LOAD DATA LOCAL INFILE "C:/Users/kdub9/Documents/funny_business/smartCityDb/sql/data/mockdata/MOCK_DATA_WORKORDERS.csv"
INTO TABLE WorkOrders
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n';

-- Load mock utilities into database
LOAD DATA LOCAL INFILE "C:/Users/kdub9/Documents/funny_business/smartCityDb/sql/data/mockdata/MOCK_DATA_UTILITIES.csv"
INTO TABLE utilities
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n';

-- Load mock Traffic Lights into database
LOAD DATA LOCAL INFILE "C:/Users/kdub9/Documents/funny_business/smartCityDb/sql/data/mockdata/MOCK_DATA_TRAFFICLIGHTS.csv"
INTO TABLE trafficlights
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n';

-- Load mock Reports into database
LOAD DATA LOCAL INFILE "C:/Users/kdub9/Documents/funny_business/smartCityDb/sql/data/mockdata/MOCK_DATA_REPORTS.csv"
INTO TABLE reports
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n';

-- Load mock maintenance schedules into database
LOAD DATA LOCAL INFILE "C:/Users/kdub9/Documents/funny_business/smartCityDb/sql/data/mockdata/MOCK_DATA_MAINTENANCESCHEDULES.csv"
INTO TABLE maintenanceschedules 
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n';

-- load mock locations into database
LOAD DATA LOCAL INFILE "C:/Users/kdub9/Documents/funny_business/smartCityDb/sql/data/mockdata/MOCK_DATA_LOCATIONS.csv"
INTO TABLE locations 
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n';

-- Load mock incidents into database
LOAD DATA LOCAL INFILE "C:/Users/kdub9/Documents/funny_business/smartCityDb/sql/data/mockdata/MOCK_DATA_INCIDENTS.csv"
INTO TABLE incidents 
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n';

-- Load departments into database
LOAD DATA LOCAL INFILE "C:/Users/kdub9/Documents/funny_business/smartCityDb/sql/data/mockdata/MOCK_DATA_DEPARTMENTS.csv"
INTO TABLE departments 
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n';

-- Load citizens into database
LOAD DATA LOCAL INFILE "C:/Users/kdub9/Documents/funny_business/smartCityDb/sql/data/mockdata/MOCK_DATA_CITIZENS.csv"
INTO TABLE citizens 
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n';

-- Load technicians into database
LOAD DATA LOCAL INFILE "C:/Users/kdub9/Documents/funny_business/smartCityDb/sql/data/mockdata/MOCK_DATA_TECHNICIANS.csv"
INTO TABLE technicians 
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n';