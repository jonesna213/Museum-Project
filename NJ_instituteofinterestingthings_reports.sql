--Displays all the rooms, all the locations and the average value of the items that were in that location.
SELECT r.RoomName as "Room", l.DetailedLocation, CAST(ROUND(AVG(CAST(a.Value as NUMERIC)), 2) as MONEY) as "Average Value"
FROM NJ_LOCATIONS as l
INNER JOIN NJ_ROOM as r
ON l.Room_Id = r.Id
INNER JOIN NJ_ARTIFACT_LOCATIONS as al
ON l.Id = al.Location_Id
INNER JOIN NJ_ARTIFACTS as a
ON al.Artifact_Id = a.Id
WHERE al.Location_Id != (
    SELECT l.Id
    FROM NJ_LOCATIONS as l
    INNER JOIN NJ_LOCATION_TYPE as lt
    ON l.Location_Type_Id = lt.Id
    WHERE LocationType = 'Restoration'
)
GROUP BY r.RoomName, l.DetailedLocation
ORDER BY r.RoomName, l.DetailedLocation;


--Displays all the artifacts and all their locations over time.
SELECT a.Description as "Artifact", al.DateAtLocation as "Date At Location OR Date Lost", r.RoomName as "Room", l.DetailedLocation
FROM NJ_ARTIFACTS as a
INNER JOIN NJ_ARTIFACT_LOCATIONS as al
ON a.Id = al.Artifact_Id
INNER JOIN NJ_LOCATIONS as l
ON al.Location_Id = l.Id
INNER JOIN NJ_ROOM as r
ON l.Room_Id = r.Id
WHERE l.Location_Type_Id != (
    SELECT Id
    FROM NJ_LOCATION_TYPE
    WHERE LocationType = 'Restoration'
)
UNION
SELECT a.Description as "Artifact", a.DateLost, 'Lost', 'Lost'
FROM NJ_ARTIFACTS as a
INNER JOIN NJ_ARTIFACT_LOCATIONS as al
ON a.Id = al.Artifact_Id
INNER JOIN NJ_LOCATIONS as l
ON al.Location_Id = l.Id
INNER JOIN NJ_ROOM as r
ON l.Room_Id = r.Id
WHERE a.DateLost IS NOT NULL
ORDER BY 1, 2;


--Displays the artifacts and the number of days they have been on display.
SELECT DISTINCT a.Description as "Artifact", (
    SELECT (
        CASE
            WHEN a.DateLost IS NOT NULL THEN ROUND(a.DateLost - MIN(al2.DateAtLocation), 0)
            ELSE ROUND(CURRENT_DATE - MIN(al2.DateAtLocation), 0)
        END
    )
    FROM NJ_ARTIFACT_LOCATIONS as al2
    INNER JOIN NJ_LOCATIONS as l2
    ON al2.Location_Id = l2.Id
    WHERE a.Id = Artifact_Id
    AND l2.Location_Type_Id != (
        SELECT Id
        FROM NJ_LOCATION_TYPE
        WHERE LocationType = 'Restoration'
    )
) as "Days on Display"
FROM NJ_ARTIFACTS as a
INNER JOIN NJ_ARTIFACT_LOCATIONS as al
ON a.Id = al.Artifact_Id
INNER JOIN NJ_LOCATIONS as l
ON al.Location_Id = l.Id
WHERE l.Location_Type_Id != (
    SELECT Id
    FROM NJ_LOCATION_TYPE
    WHERE LocationType = 'Restoration'
);


--Displays a report of the items currently on display
SELECT art.Description as "Artifact", art.RoomName, art.DetailedLocation, loc.DateAtLocation
FROM (
    SELECT Artifact_Id, Max(DateAtLocation) as DateAtLocation
    FROM NJ_ARTIFACT_LOCATIONS as al2
    INNER JOIN NJ_LOCATIONS as l2
    ON al2.Location_Id = l2.Id
    WHERE l2.Location_Type_Id != (
        SELECT Id
        FROM NJ_LOCATION_TYPE
        WHERE LocationType = 'Restoration'
    )
    GROUP BY Artifact_Id
) as loc
INNER JOIN (
    SELECT a.Id, a.Description, r.RoomName, l.DetailedLocation, al.DateAtLocation
    FROM NJ_ARTIFACTS as a
    INNER JOIN NJ_ARTIFACT_LOCATIONS as al
    ON a.Id = al.Artifact_Id
    INNER JOIN NJ_LOCATIONS as l
    ON al.Location_Id = l.Id
    INNER JOIN NJ_ROOM as r
    ON l.Room_Id = r.Id                     
    WHERE DateLost IS NULL
) as art
ON loc.Artifact_Id = art.Id
WHERE loc.DateAtLocation = art.DateAtLocation
ORDER BY art.Description, art.RoomName;

/*
    On February 4, 2003, a fire started in room A14 and all of the artifacts in that room were 
    damaged by smoke. This SQL statement sets the date damaged column to February 4, 2003 
    for all the items that were in room A14 on that date.

    *Not done
    
*/
UPDATE NJ_ARTIFACTS as a1
SET DateDamaged = '2003-02-04'
WHERE Id IN (
    SELECT DISTINCT a2.Id
    FROM NJ_ARTIFACTS as a2
    INNER JOIN NJ_ARTIFACT_LOCATIONS as al2
    ON a2.Id = al2.Artifact_Id
    INNER JOIN NJ_LOCATIONS as l2
    ON al2.Location_Id = l2.Id
    WHERE a1.Id = a2.Id AND al2.DateAtLocation < '2003-02-04'
    AND l2.Room_Id = (
        SELECT Id
        FROM NJ_ROOM
        WHERE RoomName = 'A14'
    )
);

--Show's the total amount in dollars of the values of all the lost items.
SELECT SUM(Value) as "Total Amount Lost"
FROM NJ_ARTIFACTS as a
INNER JOIN NJ_ARTIFACT_LOCATIONS  as al
ON a.Id = al.Artifact_Id
WHERE DateLost IS NOT NULL
AND al.Location_Id != (
    SELECT l.Id
    FROM NJ_LOCATIONS as l
    INNER JOIN NJ_LOCATION_TYPE as lt
    ON l.Location_Type_Id = lt.Id
    WHERE LocationType = 'Restoration'
);


--Show's the appraisers for appraised items on display.
SELECT Description as "Artifact", a.Value,  Date as "Date Appraised", FirstName || ' ' || LastName as "Appraiser Name"
FROM NJ_ARTIFACTS as a
INNER JOIN NJ_APPRAISALS as ap
ON a.Id = ap.Artifact_Id
INNER JOIN NJ_EMPLOYEE_APPRAISALS as ea
ON ap.Id = ea.Appraisal_Id
INNER JOIN NJ_EMPLOYEES as e
ON ea.Employee_Id = e.Id
WHERE InMuseum = TRUE;


--Show's the appraisers for appraised items from outside parties (that is, items that were never in the museum)
SELECT DetailedDescription as "Artifact", Value,  Date as "Date Appraised", FirstName || ' ' || LastName as "Appraiser Name"
FROM NJ_APPRAISALS as ap
INNER JOIN NJ_EMPLOYEE_APPRAISALS as ea
ON ap.Id = ea.Appraisal_Id
INNER JOIN NJ_EMPLOYEES as e
ON ea.Employee_Id = e.Id
WHERE InMuseum = FALSE;


--Display's a report of the items on display and all their locations over time.
SELECT a.Description as "Artifact", r.RoomName as "Room", l.DetailedLocation, a.Value, a.DateAquired, al.DateAtLocation, a.DateLost
FROM NJ_ARTIFACTS as a
INNER JOIN NJ_ARTIFACT_LOCATIONS as al
ON a.Id = al.Artifact_Id
INNER JOIN NJ_LOCATIONS as l
ON al.Location_Id = l.Id
INNER JOIN NJ_ROOM as r
ON l.Room_Id = r.Id
WHERE al.Location_Id != (
    SELECT l.Id
    FROM NJ_LOCATIONS as l
    INNER JOIN NJ_LOCATION_TYPE as lt
    ON l.Location_Type_Id = lt.Id
    WHERE LocationType = 'Restoration')
ORDER BY a.Description, al.DateAtLocation;