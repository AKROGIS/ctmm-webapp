-- Projects with Locations
SELECT ProjectId, MIN(FixDate) AS First, Max(FixDate) AS Last, COUNT(*) AS N
FROM Locations WHERE [Status] IS NULL GROUP BY ProjectId

-- Projects with new Locations in the last 30 days
SELECT ProjectId, Max(FixDate) AS Last
FROM Locations WHERE [Status] IS NULL
GROUP BY ProjectId HAVING Max(FixDate) > DATEADD(day, -30, GETDATE())
ORDER BY Max(FixDate)

-- Location data for a project in MOVEBANK format
SELECT AnimalId AS id, FixDate AS timestamp,
  [Location].Long AS longitude, [Location].Lat AS latitude
FROM Locations WHERE [Status] IS NULL AND ProjectId = 'DENA_Wolves'
ORDER BY FixDate

-- Stale
-- GAAR_Bears LACL_BrownBear
-- Current
-- KATM_BrownBear DENA_Bears WACH Yuch_Wolf DENA_Wolves