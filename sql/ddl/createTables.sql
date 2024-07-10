USE smartcitydb;

-- Create City Zones table
CREATE TABLE CityZones (
    ID INT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    Description VARCHAR(255) 
)

-- Create Locations table
CREATE TABLE Locations (
    ID INT PRIMARY KEY,
    Address VARCHAR(255),
    City VARCHAR(255),
    State VARCHAR(20),
    ZipCode VARCHAR(10),
    ZoneID INT,
    FOREIGN KEY (ZoneID) REFERENCES CityZones(ID)
)

-- Create Citizens table
CREATE TABLE Citizens(
    ID INT PRIMARY KEY,
    Name VARCHAR(255),
    PhoneNumber VARCHAR(255),
    Email VARCHAR(255),
    LocationID INT,
    FOREIGN KEY (LocationID) REFERENCES Locations(ID)
)

-- Create Reports table
CREATE TABLE Reports(
    ID INT PRIMARY KEY,
    Type VARCHAR(255),
    Description VARCHAR(255),
    DateReported DATETIME,
    Status VARCHAR(255),
    LocationID INT,
    CitizenID INT,
    FOREIGN KEY (LocationID) REFERENCES Locations(ID),
    FOREIGN KEY (CitizenID) REFERENCES Citizens(ID)
)

-- Create Incidents table
CREATE TABLE Incidents(
    ID INT PRIMARY KEY,
    Type VARCHAR(255),
    ReportedTime DATETIME,
    ResolvedTime DATETIME,
    Status VARCHAR(255),
    LocationID INT,
    FOREIGN KEY (LocationID) REFERENCES Locations(ID)
)

-- Create Departments table
CREATE TABLE Departments(
    ID INT PRIMARY KEY,
    Name VARCHAR(255),
    Description VARCHAR(255)
)

-- Create Technicians table
CREATE TABLE Technicians(
    ID INT PRIMARY KEY,
    Name VARCHAR(255),
    Specialty VARCHAR(255),
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(ID)
)

-- Create Utilities table
CREATE TABLE Utilities(
    ID INT PRIMARY KEY,
    Type VARCHAR(255),
    Status VARCHAR(255),
    LastMaintenance DATETIME,
    LocationID INT,
    FOREIGN KEY (LocationID) REFERENCES Locations(ID)
)

-- Create traffic lights table
CREATE TABLE TrafficLights(
    ID INT PRIMARY KEY,
    Status VARCHAR(255),
    LastMaintenance DATETIME,
    LocationID INT,
    FOREIGN KEY (LocationID) REFERENCES Locations(ID)
)

-- Create maintenance schedules table
CREATE TABLE MaintenanceSchedules(
    ID INT PRIMARY KEY,
    ScheduledDate DATETIME,
    CompletedDate DATETIME,
    UtilityID INT,
    TrafficLightID INT,
    TechnicianID INT,
    FOREIGN KEY (UtilityID) REFERENCES Utilities(ID),
    FOREIGN KEY (TrafficLightID) REFERENCES TrafficLights(ID),
    FOREIGN KEY (TechnicianID) REFERENCES Technicians(ID)
)

CREATE TABLE WorkOrders(
    ID INT PRIMARY KEY,
    CompletionDate DATETIME,
    Description VARCHAR(255),
    Status VARCHAR(255),
    IncidentID INT,
    ReportID INT,
    UtilityID INT,
    TrafficLightID INT,
    AssignedTechnicianID INT,
    FOREIGN KEY (IncidentID) REFERENCES Incidents(ID),
    FOREIGN KEY (ReportID) REFERENCES Reports(ID),
    FOREIGN KEY (UtilityID) REFERENCES Utilities(ID),
    FOREIGN KEY (TrafficLightID) REFERENCES TrafficLights(ID),
    FOREIGN KEY (AssignedTechnicianID) REFERENCES Technicians(ID)
)