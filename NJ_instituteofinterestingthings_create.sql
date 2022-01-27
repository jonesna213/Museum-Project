DROP TABLE NJ_EMPLOYEE_PHONE_NUMBERS;
DROP TABLE NJ_EMPLOYEE_APPRAISALS;
DROP TABLE NJ_EMPLOYEES;
DROP TABLE NJ_EMPLOYEE_TITLES;
DROP TABLE NJ_ARTIFACT_LOCATIONS;
DROP TABLE NJ_APPRAISALS;
DROP TABLE NJ_ARTIFACTS;
DROP TABLE NJ_LOCATIONS;
DROP TABLE NJ_ROOM;
DROP TABLE NJ_LOCATION_TYPE;

CREATE TABLE NJ_EMPLOYEE_TITLES (
    Id int PRIMARY KEY NOT NULL,
    Title VARCHAR(50) NOT NULL
);

CREATE TABLE NJ_EMPLOYEES (
    Id int PRIMARY KEY NOT NULL,
    FirstName VARCHAR(25) NOT NULL,
    MiddleName VARCHAR(25) NULL,
    LastName VARCHAR(25) NOT NULL,
    Salary MONEY NOT NULL,
    Address VARCHAR(50) NOT NULL,
    City VARCHAR(25) NOT NULL,
    State CHAR(2) NOT NULL,
    Zip int NOT NULL,
    Title int REFERENCES NJ_EMPLOYEE_TITLES(Id) NOT NULL,
    IsActive BOOLEAN NOT NULL
);

CREATE TABLE NJ_EMPLOYEE_PHONE_NUMBERS (
    Id int PRIMARY KEY NOT NULL,
    Employee_Id int REFERENCES NJ_EMPLOYEES(Id) NOT NULL,
    PhoneNumber CHAR(12) NOT NULL
);

CREATE TABLE NJ_ARTIFACTS (
    Id int PRIMARY KEY NOT NULL,
    Description VARCHAR(255) NOT NULL,
    DateAquired DATE NOT NULL,
    Value MONEY NOT NULL,
    DateLost DATE NULL
);

CREATE TABLE NJ_ROOM (
    Id int PRIMARY KEY NOT NULL,
    RoomName VARCHAR(20) NOT NULL
);

CREATE TABLE NJ_LOCATION_TYPE (
    Id int PRIMARY KEY NOT NULL,
    LocationType VARCHAR(20) NOT NULL
);

CREATE TABLE NJ_LOCATIONS (
    Id int PRIMARY KEY NOT NULL,
    Location_Type_Id int REFERENCES NJ_LOCATION_TYPE(Id) NOT NULL,
    Room_Id int REFERENCES NJ_ROOM(Id) NULL,
    DetailedLocation VARCHAR(255) NULL
);

CREATE TABLE NJ_ARTIFACT_LOCATIONS (
    Artifact_Id int REFERENCES NJ_ARTIFACTS(Id) NOT NULL,
    Location_Id int REFERENCES NJ_LOCATIONS(Id) NOT NULL,
    DateAtLocation DATE NOT NULL,
    PRIMARY KEY(Artifact_Id, Location_Id)
);

CREATE TABLE NJ_APPRAISALS (
    Id int PRIMARY KEY NOT NULL,
    InMuseum BOOLEAN NOT NULL,
    DetailedDescription VARCHAR(255) NULL,
    Value MONEY NULL,
    Artifact_Id int REFERENCES NJ_ARTIFACTS(Id) NULL
);

CREATE TABLE NJ_EMPLOYEE_APPRAISALS (
    Employee_Id int REFERENCES NJ_EMPLOYEES(Id) NOT NULL,
    Appraisal_Id int REFERENCES NJ_APPRAISALS(Id) NOT NULL,
    Date DATE NOT NULL,
    PRIMARY KEY(Employee_Id, Appraisal_Id)
);