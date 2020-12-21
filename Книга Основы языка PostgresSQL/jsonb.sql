CREATE TABLE pilot_hobbies
(
pilot_name text,
hobbies jsonb
);

INSERT INTO pilot_hobbies
VALUES ( 'Ivan',
		'{ "sports": [ "������", "��������" ],
			"home_lib": true, "trips": 3
		}'::jsonb
		),
		( 'Petr',
		'{ "sports": [ "������", "��������" ],
			"home_lib": true, "trips": 2
		}'::jsonb
		),
		( 'Pavel',
		'{ "sports": [ "��������" ],
			"home_lib": false, "trips": 4
		}'::jsonb
		),
		( 'Boris',
		'{ "sports": [ "������", "��������", "������" ],
			"home_lib": true, "trips": 0
		}'::jsonb
);

SELECT * FROM pilot_hobbies;


SELECT * FROM pilot_hobbies
WHERE hobbies @> '{ "sports": [ "������" ] }'::jsonb;

SELECT pilot_name, hobbies->'sports' AS sports
FROM pilot_hobbies
WHERE hobbies->'sports' @> '[ "������" ]'::jsonb;

SELECT count( * )
FROM pilot_hobbies
WHERE hobbies ? 'sports';

UPDATE pilot_hobbies
SET hobbies = hobbies || '{ "sports": [ "������" ] }'
WHERE pilot_name = 'Boris';

SELECT pilot_name, hobbies
FROM pilot_hobbies
WHERE pilot_name = 'Boris';