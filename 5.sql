SELECT p.id FROM person AS p
JOIN drivers_license AS dl ON p.license_id = dl.id
WHERE dl.plate_number LIKE '%H42W%'