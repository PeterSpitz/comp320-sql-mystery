--The first witness lives at the last house on "Northwestern Dr". │
--The second witness, named Annabel, lives somewhere on "Franklin Ave".

SELECT id FROM person
WHERE (address_street_name = 'Northwestern Dr' AND address_number = (
    SELECT MAX(address_number) FROM person
    WHERE address_street_name = 'Northwestern Dr'
))
OR (address_street_name = 'Franklin Ave' AND name LIKE 'Annabel%')