CREATE TABLE pilot_hobbies
(
pilot_name text,
hobbies jsonb
);

INSERT INTO pilot_hobbies
VALUES ( 'Ivan',
		'{ "sports": [ "футбол", "плавание" ],
			"home_lib": true, "trips": 3
		}'::jsonb
		),
		( 'Petr',
		'{ "sports": [ "теннис", "плавание" ],
			"home_lib": true, "trips": 2
		}'::jsonb
		),
		( 'Pavel',
		'{ "sports": [ "плавание" ],
			"home_lib": false, "trips": 4
		}'::jsonb
		),
		( 'Boris',
		'{ "sports": [ "футбол", "плавание", "теннис" ],
			"home_lib": true, "trips": 0
		}'::jsonb
);

SELECT * FROM pilot_hobbies;


SELECT * FROM pilot_hobbies
WHERE hobbies @> '{ "sports": [ "футбол" ] }'::jsonb;

SELECT pilot_name, hobbies->'sports' AS sports
FROM pilot_hobbies
WHERE hobbies->'sports' @> '[ "футбол" ]'::jsonb;

SELECT count( * )
FROM pilot_hobbies
WHERE hobbies ? 'sports';

UPDATE pilot_hobbies
SET hobbies = hobbies || '{ "sports": [ "хоккей" ] }'
WHERE pilot_name = 'Boris';

SELECT pilot_name, hobbies
FROM pilot_hobbies
WHERE pilot_name = 'Boris';