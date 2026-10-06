/*I heard a gunshot and then saw a man run out. He had a "Get Fit Now Gym" bag.
 The membership number on the bag started with "48Z".
 Only gold members have those bags.
 The man got into a car with a plate that included "H42W".    │
├────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┤
│I saw the murder happen, and I recognized the killer from my gym when I was working out last week on 
 January the 9th. */

SELECT gfm.person_id FROM get_fit_now_member AS gfm
JOIN get_fit_now_check_in AS gfc ON gfm.id = gfc.membership_id
WHERE gfc.check_in_date = 20180109
AND gfm.id LIKE '48Z%'
AND gfm.membership_status = 'gold'