# Демонстрационная бд

https://postgrespro.ru/education/demodb

База двнных «Авиаперевозки»:
1. Малая - за 1 месяц
2. Средняя - за 3 месяца
3. Большая - за 1 год

Развертывание базы данных малого размера
1. Скачать ее заархивированную резервную копию по ссылке https://edu.postgrespro.ru/demo_small.
2. Разорхивировать `unzip demo_small.zip`
3. Установка скрипта
	
	1. `psql -f demo_small.sql -U postgres` - вывод сообщений в консоль;

	2. или `psql -f demo_small.sql -U postgres > demo.log 2>demo.err` - вывод сообщений в файл

	3. или `psql -f demo_small.sql -U postgres > demo.log 2>&1` - сообщения об ошибках нужно направить
	туда же, куда выводятся и обычные сообщения

	4. `psql -f demo_small.sql -U postgres > demo.log 2>&1 &`
		`tail -f demo.log`
		- в фоновом режиме

4. `psql -d demo -U postgres` -подключиться к бд

## Таблица "Самолеты" (Aircrafts)

Описание атрибута | Имя атрибута | Тип данных | Тип PostgreSQL | Ограничения
------------------|--------------|------------|----------------|------------------
Код самолета, IATA | aircraft_code | Символьный | char(3) | NOT NULL, Primary Key
Модель самолета | model | Символьный | text | NOT NULL
Максимальная дальность полета, км | range | Числовой | integer | NOT NULL range > 0

```sql
CREATE TABLE aircrafts (
	aircraft_code char( 3 ) NOT NULL, -- код самолета
	model text NOT NULL, -- модель самолета
	range integer NOT NULL, -- Максимальная дальность полета, км
	CHECK ( range > 0 ),
	PRIMARY KEY ( aircraft_code )
);

CREATE TABLE seats
(
aircraft_code char( 3 ) NOT NULL, -- Код самолета, IATA
seat_no varchar( 4 ) NOT NULL, -- Номер места
fare_conditions varchar( 10 ) NOT NULL, -- класс обслуживания
CHECK
( fare_conditions IN ( 'Economy', 'Comfort', 'Business' )
),
PRIMARY KEY ( aircraft_code, seat_no ),
FOREIGN KEY ( aircraft_code )
REFERENCES aircrafts (aircraft_code )
ON DELETE CASCADE -- при удаление строки из таблицы aircrafts, удаляются все зависимые строки в seats
);

SELECT aircraft_code, count( * ) FROM seats
GROUP BY aircraft_code -- отвечает за группировку строк с одинаковыми значениями атрибута aircraft_code
ORDER BY count DESC;

SELECT aircraft_code, fare_conditions, count( * )
FROM seats
GROUP BY aircraft_code, fare_conditions
ORDER BY aircraft_code, fare_conditions;
```

