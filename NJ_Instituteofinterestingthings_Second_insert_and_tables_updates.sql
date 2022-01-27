--New Column
ALTER TABLE NJ_ARTIFACTS
ADD DateDamaged DATE NULL;


--Rooms

INSERT INTO NJ_ROOM (Id, RoomName)
VALUES (6, 'A14');


--Locations

INSERT INTO NJ_LOCATIONS (Id, Location_Type_Id, Room_Id, DetailedLocation)
VALUES (7, 1, 6, 'Right wall, plexi-case 14');

INSERT INTO NJ_LOCATIONS (Id, Location_Type_Id, Room_Id, DetailedLocation)
VALUES (8, 1, 6, 'Display stand 8');

INSERT INTO NJ_LOCATIONS (Id, Location_Type_Id, Room_Id, DetailedLocation)
VALUES (9, 1, 6, 'Display stand 11');


--Artifacts
UPDATE NJ_ARTIFACTS
SET DateAquired = '2018-12-18', Value = 12700.00
WHERE Description = 'Nixon Self-Portrait';

UPDATE NJ_ARTIFACTS
SET DateAquired = '1995-12-08', Value = 25000.00
WHERE Description = '1900''s American Jazz Trombone';

UPDATE NJ_ARTIFACTS
SET DateAquired = '1991-12-12', Value = 2500.00
WHERE Description = 'Velociraptor Tooth';

UPDATE NJ_ARTIFACTS
SET DateAquired = '2002-06-07', Value = 150.00
WHERE Description = 'Trilobite Fossil';



--Artifact Locations

INSERT INTO NJ_ARTIFACT_LOCATIONS (Artifact_Id, Location_Id, DateAtLocation)
VALUES (6, 7, '2018-12-19');

INSERT INTO NJ_ARTIFACT_LOCATIONS (Artifact_Id, Location_Id, DateAtLocation)
VALUES (7, 8, '1996-01-05');

INSERT INTO NJ_ARTIFACT_LOCATIONS (Artifact_Id, Location_Id, DateAtLocation)
VALUES (7, 9, '1999-06-11');

INSERT INTO NJ_ARTIFACT_LOCATIONS (Artifact_Id, Location_Id, DateAtLocation)
VALUES (7, 5, '2007-09-09');

INSERT INTO NJ_ARTIFACT_LOCATIONS (Artifact_Id, Location_Id, DateAtLocation)
VALUES (8, 8, '1999-06-11');

INSERT INTO NJ_ARTIFACT_LOCATIONS (Artifact_Id, Location_Id, DateAtLocation)
VALUES (9, 9, '2007-09-09');

