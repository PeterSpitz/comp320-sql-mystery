SELECT p.name FROM person AS p
JOIN get_fit_now_check_in AS gfc ON gfm.id = gfc.membership_id
JOIN get_fit_now_member AS gfm ON p.id = gfm.person_id
JOIN drivers_license AS dl ON p.license_id = dl.id
WHERE gfc.check_in_date = 20180109
AND gfm.id LIKE '48Z%'
AND gfm.membership_status = 'gold'
AND dl.plate_number LIKE '%H42W%'
