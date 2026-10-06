--Jeremy Bowers

/*
SELECT i.transcript FROM interview AS i
JOIN person AS p ON i.person_id = p.id
WHERE p.name = 'Jeremy Bowers'
*/

/*
I was hired by a woman with a lot of money.
I don''t know her name but I know she''s around 5''5" (65") or 5''7" (67"). 
She has red hair and she drives a Tesla Model S. 
I know that she attended the SQL Symphony Concert 3 times in December 2017
*/

SELECT p.name FROM person AS p
JOIN income AS i ON i.ssn = p.ssn
JOIN drivers_license AS d ON d.id = p.license_id
WHERE i.annual_income > (SELECT AVG(annual_income) FROM income)
AND d.height BETWEEN 65 AND 67
AND d.hair_color = 'red'
AND d.gender = 'female'
AND d.car_make = 'Tesla'
AND d.car_model = 'Model S'
AND p.id IN (SELECT person_id FROM facebook_event_checkin
            WHERE event_name = 'SQL Symphony Concert'
            AND date BETWEEN 20171201 AND 20171231)