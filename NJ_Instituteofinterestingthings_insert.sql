--Artifacts

INSERT INTO NJ_ARTIFACTS (Id, Description, DateAquired, Value, DateLost)
VALUES (1, 'Hittite Bracelet', '1987-01-15', 3200.00, NULL);

INSERT INTO NJ_ARTIFACTS (Id, Description, DateAquired, Value, DateLost)
VALUES (2, 'Mounted Mongol Statue, 27 feet', '1993-04-08', 3400000.00, NULL);

INSERT INTO NJ_ARTIFACTS (Id, Description, DateAquired, Value, DateLost)
VALUES (3, 'Mummy in Glass Case', '2005-04-30', 1900000.00, NULL);

INSERT INTO NJ_ARTIFACTS (Id, Description, DateAquired, Value, DateLost)
VALUES (4, 'Mesopotamian Dish', '1992-03-02', 125000.50, '2007-09-09');

INSERT INTO NJ_ARTIFACTS (Id, Description, DateAquired, Value, DateLost)
VALUES (5, 'Ancient Australian Coins', '1992-02-11', 3000.00, '1997-09-05');

INSERT INTO NJ_ARTIFACTS (Id, Description, DateAquired, Value, DateLost)
VALUES (6, 'Nixon Self-Portrait', '1999-01-27', 900000.00, NULL);

INSERT INTO NJ_ARTIFACTS (Id, Description, DateAquired, Value, DateLost)
VALUES (7, '1900''s American Jazz Trombone', '2013-05-13', 250000.50, NULL);

INSERT INTO NJ_ARTIFACTS (Id, Description, DateAquired, Value, DateLost)
VALUES (8, 'Velociraptor Tooth', '2000-12-03', 100000.00, NULL);

INSERT INTO NJ_ARTIFACTS (Id, Description, DateAquired, Value, DateLost)
VALUES (9, 'Trilobite Fossil', '1990-06-12', 45000.00, NULL);

INSERT INTO NJ_ARTIFACTS (Id, Description, DateAquired, Value, DateLost)
VALUES (10, 'Lucy', '1996-02-15', 20000.75, NULL);

INSERT INTO NJ_ARTIFACTS (Id, Description, DateAquired, Value, DateLost)
VALUES (11, 'Ancient Antarcic Hut', '2011-06-09', 74000.00, NULL);

INSERT INTO NJ_ARTIFACTS (Id, Description, DateAquired, Value, DateLost)
VALUES (12, 'Jimi''s Second Electric Guitar', '2001-09-13', 35000.00, NULL);

INSERT INTO NJ_ARTIFACTS (Id, Description, DateAquired, Value, DateLost)
VALUES (13, '1870''s Harmonica', '1989-11-12', 12000.00, NULL);

INSERT INTO NJ_ARTIFACTS (Id, Description, DateAquired, Value, DateLost)
VALUES (14, 'Moon Rock', '2002-04-13', 5500.00, NULL);

INSERT INTO NJ_ARTIFACTS (Id, Description, DateAquired, Value, DateLost)
VALUES (15, 'Neil Armstrong''s Boot', '2005-10-17', 3750.00, NULL);

INSERT INTO NJ_ARTIFACTS (Id, Description, DateAquired, Value, DateLost)
VALUES (16, 'Railroad Ceremonial Bronze Spike', '1993-07-17', 12750.50, NULL);


--Rooms
INSERT INTO NJ_ROOM (Id, RoomName)
VALUES (1, 'Restoration');

INSERT INTO NJ_ROOM (Id, RoomName)
VALUES (2, 'Rotunda');

INSERT INTO NJ_ROOM (Id, RoomName)
VALUES (3, 'Foyer');

INSERT INTO NJ_ROOM (Id, RoomName)
VALUES (4, '39');

INSERT INTO NJ_ROOM (Id, RoomName)
VALUES (5, 'B7');


--Location Type
INSERT INTO NJ_LOCATION_TYPE (Id, LocationType)
VALUES (1, 'Display');

INSERT INTO NJ_LOCATION_TYPE (Id, LocationType)
VALUES (2, 'Storage');

INSERT INTO NJ_LOCATION_TYPE (Id, LocationType)
VALUES (3, 'Restoration');

INSERT INTO NJ_LOCATION_TYPE (Id, LocationType)
VALUES (4, 'Loan');


--Locations

INSERT INTO NJ_LOCATIONS (Id, Location_Type_Id, Room_Id, DetailedLocation)
VALUES (1, 3, 1, NULL);

INSERT INTO NJ_LOCATIONS (Id, Location_Type_Id, Room_Id, DetailedLocation)
VALUES (2, 1, 2, NULL);

INSERT INTO NJ_LOCATIONS (Id, Location_Type_Id, Room_Id, DetailedLocation)
VALUES (3, 1, 3, NULL);

INSERT INTO NJ_LOCATIONS (Id, Location_Type_Id, Room_Id, DetailedLocation)
VALUES (4, 1, 4, 'Glass case C3, upper right');

INSERT INTO NJ_LOCATIONS (Id, Location_Type_Id, Room_Id, DetailedLocation)
VALUES (5, 1, 5, 'Shelves along left wall');

INSERT INTO NJ_LOCATIONS (Id, Location_Type_Id, Room_Id, DetailedLocation)
VALUES (6, 1, 5, 'Drawer D1');


--Artifact Locations

INSERT INTO NJ_ARTIFACT_LOCATIONS (Artifact_Id, Location_Id, DateAtLocation)
VALUES (3, 2, '2019-08-19');

INSERT INTO NJ_ARTIFACT_LOCATIONS (Artifact_Id, Location_Id, DateAtLocation)
VALUES (2, 2, '2017-10-30');

INSERT INTO NJ_ARTIFACT_LOCATIONS (Artifact_Id, Location_Id, DateAtLocation)
VALUES (2, 3, '2019-08-19');

INSERT INTO NJ_ARTIFACT_LOCATIONS (Artifact_Id, Location_Id, DateAtLocation)
VALUES (4, 4, '2004-04-22');

INSERT INTO NJ_ARTIFACT_LOCATIONS (Artifact_Id, Location_Id, DateAtLocation)
VALUES (1, 4, '2011-03-01');

INSERT INTO NJ_ARTIFACT_LOCATIONS (Artifact_Id, Location_Id, DateAtLocation)
VALUES (1, 5, '2019-08-19');

INSERT INTO NJ_ARTIFACT_LOCATIONS (Artifact_Id, Location_Id, DateAtLocation)
VALUES (5, 6, '1993-02-11');

--Restoration (not to be shown in reports)
INSERT INTO NJ_ARTIFACT_LOCATIONS (Artifact_Id, Location_Id, DateAtLocation)
VALUES (6, 1, '1999-01-27');

INSERT INTO NJ_ARTIFACT_LOCATIONS (Artifact_Id, Location_Id, DateAtLocation)
VALUES (7, 1, '2013-05-13');

INSERT INTO NJ_ARTIFACT_LOCATIONS (Artifact_Id, Location_Id, DateAtLocation)
VALUES (8, 1, '2000-12-03');

INSERT INTO NJ_ARTIFACT_LOCATIONS (Artifact_Id, Location_Id, DateAtLocation)
VALUES (9, 1, '1990-06-12');

INSERT INTO NJ_ARTIFACT_LOCATIONS (Artifact_Id, Location_Id, DateAtLocation)
VALUES (10, 1, '1996-02-15');

INSERT INTO NJ_ARTIFACT_LOCATIONS (Artifact_Id, Location_Id, DateAtLocation)
VALUES (11, 1, '2011-06-09');

INSERT INTO NJ_ARTIFACT_LOCATIONS (Artifact_Id, Location_Id, DateAtLocation)
VALUES (12, 1, '2001-09-13');

INSERT INTO NJ_ARTIFACT_LOCATIONS (Artifact_Id, Location_Id, DateAtLocation)
VALUES (13, 1, '1989-11-12');

INSERT INTO NJ_ARTIFACT_LOCATIONS (Artifact_Id, Location_Id, DateAtLocation)
VALUES (14, 1, '2002-04-13');

INSERT INTO NJ_ARTIFACT_LOCATIONS (Artifact_Id, Location_Id, DateAtLocation)
VALUES (15, 1, '2005-10-17');

INSERT INTO NJ_ARTIFACT_LOCATIONS (Artifact_Id, Location_Id, DateAtLocation)
VALUES (16, 1, '1993-07-17');


--Employee Titles

INSERT INTO NJ_EMPLOYEE_TITLES (Id, Title) 
VALUES (1, 'Appraiser');

INSERT INTO NJ_EMPLOYEE_TITLES (Id, Title) 
VALUES (2, 'Tour Attendant');

INSERT INTO NJ_EMPLOYEE_TITLES (Id, Title) 
VALUES (3, 'Ticket Booth Operator');

INSERT INTO NJ_EMPLOYEE_TITLES (Id, Title) 
VALUES (4, 'Ph.D');


--Employees

INSERT INTO NJ_EMPLOYEES (Id, FirstName, MiddleName, LastName, Salary, Address, City, State, Zip, Title, IsActive)
VALUES (1, 'Nanuk', NULL, 'Wayna', 80000, '123 w street', 'Stoughton', 'WI', 53589, 1, TRUE);

INSERT INTO NJ_EMPLOYEES (Id, FirstName, MiddleName, LastName, Salary, Address, City, State, Zip, Title, IsActive)
VALUES (2, 'Oihana', NULL, 'Peru', 15000, '456 w street', 'Stoughton', 'WI', 53589, 2, TRUE);

INSERT INTO NJ_EMPLOYEES (Id, FirstName, MiddleName, LastName, Salary, Address, City, State, Zip, Title, IsActive)
VALUES (3, 'Vosgi', NULL, 'Gevorg', 15000, '789 w street', 'Stoughton', 'WI', 53589, 2, TRUE);

INSERT INTO NJ_EMPLOYEES (Id, FirstName, MiddleName, LastName, Salary, Address, City, State, Zip, Title, IsActive)
VALUES (4, 'Clyde', NULL, 'Drystan', 82000, '123 e street', 'Stoughton', 'WI', 53589, 1, TRUE);

INSERT INTO NJ_EMPLOYEES (Id, FirstName, MiddleName, LastName, Salary, Address, City, State, Zip, Title, IsActive)
VALUES (5, 'Francisco', NULL, 'Rafa', 15000, '456 e street', 'Stoughton', 'WI', 53589, 3, TRUE);

INSERT INTO NJ_EMPLOYEES (Id, FirstName, MiddleName, LastName, Salary, Address, City, State, Zip, Title, IsActive)
VALUES (6, 'Ignacio', NULL, 'Jose', 15000, '789 e street', 'Stoughton', 'WI', 53589, 3, TRUE);

INSERT INTO NJ_EMPLOYEES (Id, FirstName, MiddleName, LastName, Salary, Address, City, State, Zip, Title, IsActive)
VALUES (7, 'Eskil', NULL, 'Gustav', 120000, '123 n street', 'Stoughton', 'WI', 53589, 4, TRUE);

INSERT INTO NJ_EMPLOYEES (Id, FirstName, MiddleName, LastName, Salary, Address, City, State, Zip, Title, IsActive)
VALUES (8, 'Lela', NULL, 'Tamari', 85000, '456 n street', 'Stoughton', 'WI', 53589, 1, TRUE);

INSERT INTO NJ_EMPLOYEES (Id, FirstName, MiddleName, LastName, Salary, Address, City, State, Zip, Title, IsActive)
VALUES (9, 'Dietfried', NULL, 'Xaver', 15000, '789 n street', 'Stoughton', 'WI', 53589, 3, TRUE);

INSERT INTO NJ_EMPLOYEES (Id, FirstName, MiddleName, LastName, Salary, Address, City, State, Zip, Title, IsActive)
VALUES (10, 'Dobroslaw', NULL, 'Zusa', 15000, '123 s street', 'Stoughton', 'WI', 53589, 3, TRUE);


--Employee Phone Numbers

INSERT INTO NJ_EMPLOYEE_PHONE_NUMBERS (Id, Employee_Id, PhoneNumber)
VALUES (1, 1, '123-456-7890');

INSERT INTO NJ_EMPLOYEE_PHONE_NUMBERS (Id, Employee_Id, PhoneNumber)
VALUES (2, 2, '098-765-4321');

INSERT INTO NJ_EMPLOYEE_PHONE_NUMBERS (Id, Employee_Id, PhoneNumber)
VALUES (3, 3, '784-836-8121');

INSERT INTO NJ_EMPLOYEE_PHONE_NUMBERS (Id, Employee_Id, PhoneNumber)
VALUES (4, 4, '902-783-3884');

INSERT INTO NJ_EMPLOYEE_PHONE_NUMBERS (Id, Employee_Id, PhoneNumber)
VALUES (5, 5, '843-912-7233');

INSERT INTO NJ_EMPLOYEE_PHONE_NUMBERS (Id, Employee_Id, PhoneNumber)
VALUES (6, 6, '219-483-4731');

INSERT INTO NJ_EMPLOYEE_PHONE_NUMBERS (Id, Employee_Id, PhoneNumber)
VALUES (7, 7, '920-312-3932');

INSERT INTO NJ_EMPLOYEE_PHONE_NUMBERS (Id, Employee_Id, PhoneNumber)
VALUES (8, 8, '128-302-9818');

INSERT INTO NJ_EMPLOYEE_PHONE_NUMBERS (Id, Employee_Id, PhoneNumber)
VALUES (9, 9, '092-382-4346');

INSERT INTO NJ_EMPLOYEE_PHONE_NUMBERS (Id, Employee_Id, PhoneNumber)
VALUES (10, 10, '902-381-0928');


--Appraisals

INSERT INTO NJ_APPRAISALS (Id, InMuseum, DetailedDescription, Value, Artifact_Id)
VALUES (1, TRUE, NULL, NULL, 2);

INSERT INTO NJ_APPRAISALS (Id, InMuseum, DetailedDescription, Value, Artifact_Id)
VALUES (2, FALSE, 'Prussian Cannonball', 7500.00, NULL);


--Employee Appraisals
INSERT INTO NJ_EMPLOYEE_APPRAISALS (Employee_Id, Appraisal_Id, Date)
VALUES (8, 1, '2002-11-29');

INSERT INTO NJ_EMPLOYEE_APPRAISALS (Employee_Id, Appraisal_Id, Date)
VALUES (1, 1, '2002-11-30');

INSERT INTO NJ_EMPLOYEE_APPRAISALS (Employee_Id, Appraisal_Id, Date)
VALUES (4, 2, '2020-12-20');