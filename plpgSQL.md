<!-- MarkdownTOC autolink="true" -->

- [plpgSQL Тема 11](#plpgsql-%D0%A2%D0%B5%D0%BC%D0%B0-11)
	- [Зачем](#%D0%97%D0%B0%D1%87%D0%B5%D0%BC)
	- [Структура блока](#%D0%A1%D1%82%D1%80%D1%83%D0%BA%D1%82%D1%83%D1%80%D0%B0-%D0%B1%D0%BB%D0%BE%D0%BA%D0%B0)
	- [Создание функции на PL/pgSQL](#%D0%A1%D0%BE%D0%B7%D0%B4%D0%B0%D0%BD%D0%B8%D0%B5-%D1%84%D1%83%D0%BD%D0%BA%D1%86%D0%B8%D0%B8-%D0%BD%D0%B0-plpgsql)
	- [Ананимные блоки](#%D0%90%D0%BD%D0%B0%D0%BD%D0%B8%D0%BC%D0%BD%D1%8B%D0%B5-%D0%B1%D0%BB%D0%BE%D0%BA%D0%B8)
	- [Условные операторы](#%D0%A3%D1%81%D0%BB%D0%BE%D0%B2%D0%BD%D1%8B%D0%B5-%D0%BE%D0%BF%D0%B5%D1%80%D0%B0%D1%82%D0%BE%D1%80%D1%8B)
		- [IF](#if)
		- [CASE](#case)
		- [FOR](#for)
		- [WHILE](#while)
		- [Безусловный цикл](#%D0%91%D0%B5%D0%B7%D1%83%D1%81%D0%BB%D0%BE%D0%B2%D0%BD%D1%8B%D0%B9-%D1%86%D0%B8%D0%BA%D0%BB)
	- [psql](#psql)
- [Тема 12](#%D0%A2%D0%B5%D0%BC%D0%B0-12)
	- [Одна строка результата](#%D0%9E%D0%B4%D0%BD%D0%B0-%D1%81%D1%82%D1%80%D0%BE%D0%BA%D0%B0-%D1%80%D0%B5%D0%B7%D1%83%D0%BB%D1%8C%D1%82%D0%B0%D1%82%D0%B0)
	- [Сбор статистики](#%D0%A1%D0%B1%D0%BE%D1%80-%D1%81%D1%82%D0%B0%D1%82%D0%B8%D1%81%D1%82%D0%B8%D0%BA%D0%B8)
		- [Сколько строчек было затронуто?](#%D0%A1%D0%BA%D0%BE%D0%BB%D1%8C%D0%BA%D0%BE-%D1%81%D1%82%D1%80%D0%BE%D1%87%D0%B5%D0%BA-%D0%B1%D1%8B%D0%BB%D0%BE-%D0%B7%D0%B0%D1%82%D1%80%D0%BE%D0%BD%D1%83%D1%82%D0%BE)
		- [Табличные функции](#%D0%A2%D0%B0%D0%B1%D0%BB%D0%B8%D1%87%D0%BD%D1%8B%D0%B5-%D1%84%D1%83%D0%BD%D0%BA%D1%86%D0%B8%D0%B8)
			- [Строки запроса](#%D0%A1%D1%82%D1%80%D0%BE%D0%BA%D0%B8-%D0%B7%D0%B0%D0%BF%D1%80%D0%BE%D1%81%D0%B0)
			- [Одна строка](#%D0%9E%D0%B4%D0%BD%D0%B0-%D1%81%D1%82%D1%80%D0%BE%D0%BA%D0%B0)
- [Подход к устранению неоднозначностей](#%D0%9F%D0%BE%D0%B4%D1%85%D0%BE%D0%B4-%D0%BA-%D1%83%D1%81%D1%82%D1%80%D0%B0%D0%BD%D0%B5%D0%BD%D0%B8%D1%8E-%D0%BD%D0%B5%D0%BE%D0%B4%D0%BD%D0%BE%D0%B7%D0%BD%D0%B0%D1%87%D0%BD%D0%BE%D1%81%D1%82%D0%B5%D0%B9)
	- [Венгерская нотация](#%D0%92%D0%B5%D0%BD%D0%B3%D0%B5%D1%80%D1%81%D0%BA%D0%B0%D1%8F-%D0%BD%D0%BE%D1%82%D0%B0%D1%86%D0%B8%D1%8F)
	- [Использование квалификаторов имен](#%D0%98%D1%81%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5-%D0%BA%D0%B2%D0%B0%D0%BB%D0%B8%D1%84%D0%B8%D0%BA%D0%B0%D1%82%D0%BE%D1%80%D0%BE%D0%B2-%D0%B8%D0%BC%D0%B5%D0%BD)
	- [UPDATE, DELETE, INSERT, которые возвращаю значения](#update-delete-insert-%D0%BA%D0%BE%D1%82%D0%BE%D1%80%D1%8B%D0%B5-%D0%B2%D0%BE%D0%B7%D0%B2%D1%80%D0%B0%D1%89%D0%B0%D1%8E-%D0%B7%D0%BD%D0%B0%D1%87%D0%B5%D0%BD%D0%B8%D1%8F)
		- [Табличные функции](#%D0%A2%D0%B0%D0%B1%D0%BB%D0%B8%D1%87%D0%BD%D1%8B%D0%B5-%D1%84%D1%83%D0%BD%D0%BA%D1%86%D0%B8%D0%B8-1)
- [Тема 13 Курсоры](#%D0%A2%D0%B5%D0%BC%D0%B0-13-%D0%9A%D1%83%D1%80%D1%81%D0%BE%D1%80%D1%8B)
	- [Чтение в циклах](#%D0%A7%D1%82%D0%B5%D0%BD%D0%B8%D0%B5-%D0%B2-%D1%86%D0%B8%D0%BA%D0%BB%D0%B0%D1%85)
	- [Обновление или удаление текущей строки](#%D0%9E%D0%B1%D0%BD%D0%BE%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D0%B5-%D0%B8%D0%BB%D0%B8-%D1%83%D0%B4%D0%B0%D0%BB%D0%B5%D0%BD%D0%B8%D0%B5-%D1%82%D0%B5%D0%BA%D1%83%D1%89%D0%B5%D0%B9-%D1%81%D1%82%D1%80%D0%BE%D0%BA%D0%B8)
	- [Открытие курсора и передача его клиенту](#%D0%9E%D1%82%D0%BA%D1%80%D1%8B%D1%82%D0%B8%D0%B5-%D0%BA%D1%83%D1%80%D1%81%D0%BE%D1%80%D0%B0-%D0%B8-%D0%BF%D0%B5%D1%80%D0%B5%D0%B4%D0%B0%D1%87%D0%B0-%D0%B5%D0%B3%D0%BE-%D0%BA%D0%BB%D0%B8%D0%B5%D0%BD%D1%82%D1%83)

<!-- /MarkdownTOC -->


# plpgSQL Тема 11

+ Доступен по умолчанию

+ Нужен для написания хранимых функций и триггеров

+ Доверенный язык

+ Добавляет управляющие структуры к языку SQL

+ Любые выражения из функций на PL/pgSQL выполняются на сервере

```sql
CREATE [TRUSTED] LANGUAGE ИМЯ 
HANDLER обработчик_вызова
[UNLINE обработчик внедренного кода]
[VALIDATOR функция _проверки];
```

[TRUSTED] - PL/pgSQLдоверенный язык - ограниченная функциональность в частности взаимодействия с OC
   
   [UNTRASTED] - perlu - недоверенный язык - заканчивают на 'u' - могут что-то сломать 

   + отправлять СМС и иными способами общаться с внешними данными

Доступные языки:

в дистрибутиве: PL/pgSQL, PL/Python

дополнительно: PL/Java, PL/R

## Зачем 

1. Оптимизация (меньше передачи данных, выполнение многих команд за один запрос)
   
   Выполнить за один запрос (вызов функции) много действий-команд на сервере.

   Только в PL/pgSQL используются автоматически подготовленные команды, те разбор команды при первом запросе запоминается и все последующие команды
   аналогичные (с другими аргументами) пропускают стадии разбора и постройки плана выполнения запроса

2. Хранимые функции - интерфейс сущностей, хранящихся в базе данных

   \+ Правила согласованности при работе с большим количеством таблиц 

   \- Большая зависимость от базы данных (хранимые функции плохо переносятся)

## Структура блока

```sql
[<<метка>>] -- для обращения к именам переменных (переменная с указаним метки)
[DECLARE
	-- объявления
	имя_переменной 
	 [CONSTRAINT] -- константа - значение нельзя изменять
	 	-- Псевдотипы
		-- %ROWTYPE - тип строки в таблице : <имя_таблицы>%ROWTYPE
		-- %TYPE - тип столбца таблицы : <имя_таблицы>%TYPE
	 тип_переменной 
	 [NOT NULL] -- значение не может быть NULL
	[{DEFAULT| := | =]} значение_по_умолчанию ];

	
BEGIN
	операторы
[EXCEPTION
	обработка_ошибок]
END [метка];
```

* BEGIN - начало исполняемой секции в PL/pgSQL - блоке

* BEGIN; - команда SQL, открывающая транзакцию

## Создание функции на PL/pgSQL

```sql
-- OUT параметры - возвращаемые значения из функции
CREATE FUNCTION имя (INOUT параметр1 тип, OUT параметр2 тип, IN параметр3)
AS $$
[DECLARE ...]
 BEGIN
 	...
 	параметр1 := value;
 	параметр2 := value;
 END;
$$ LANGUAGE plpgsql;

-- Пример

CREATE FUNCTION fmt_in (IN phone text) RETURNS text
AS $$
BEGIN
	IF phone ~ '^[0-9]*$' AND length(phone) = 10 THEN
		RETURN '+7(' || substr(phone, 1, 3) || ')'
					|| substr(phone, 4, 3) || '-'
					|| substr(phone, 7, 2) || '-'
					|| substr(phone, 9);
	ELSE
		RETURN NULL;
	END IF;
END;
$$ LANGUAGE plpgsql IMMUTABLE;
/*IMMUTABLE (НЕИЗМЕННЫЙ) указывает, что функция не может изменять базу данных и всегда возвращает один и тот же результат, если заданы одинаковые значения аргументов; то есть он не выполняет поиск в базе данных или иным образом не использует информацию, не представленную непосредственно в его списке аргументов.*/

CREATE FUNCTION fmt_out (IN phone text, OUT retval text)
AS $$
BEGIN
	retval := fmt_in(phone);
END;
$$ LANGUAGE plpgsql IMMUTABLE;

CREATE FUNCTION fmt_inout (INOUT phone text)
AS $$
BEGIN
	phone := fmt_out(phone);
END;
$$ LANGUAGE plpgsql IMMUTABLE;

SELECT fmt_in('2223334455'), fmt_out('2223334455'), fmt_inout('2223334455');

CREATE FUNCTION fmt_out_2 (IN phone text, OUT code text, OUT num text)
 -- RETURNS можно не писать, предпологается RETURNS record
AS $$
BEGIN
	IF phone ~ '^[0-9]*$' AND length(phone) = 10 THEN
	
		code := substr(phone, 1,3);
		num := substr(phone, 4);
	ELSE
		code := NULL;
		num := NULL;
	END IF;
END;
$$ LANGUAGE plpgsql IMMUTABLE;

SELECT fmt_out('2223334455'), fmt_out_2('2223334455');

DO $$
DECLARE
	code text := (fmt_out_2('2223334455')).code;
BEGIN
	CASE code
	WHEN '495', '499' THEN
		RAISE NOTICE '% - Москва', code;
	WHEN '812' THEN
		RAISE NOTICE '% - Санкт-Петербург', code;
	WHEN '384' THEN
		RAISE NOTICE '% - Кемеровская область', code;
	ELSE
		RAISE NOTICE '% - Прочее', code; -- Замечание: 222 - Прочее
	END CASE;
	-- RAISE NOTICE <SQL оператор>
	-- подзапрос: RAISE NOTICE '%', (SELECT code FROM t WHERE id=1);
	-- блок CASE из SQL: RAISE NOTICE '%', CASE 2+2 WHEN 4 THEN 'OK' END;
END;
$$;

-- Инвертирует строку
CREATE FUNCTION reverse_for (line text) RETURNS text
AS $$
DECLARE
	line_length CONSTANT int := length(line);
	retval text := '';
BEGIN
	FOR i IN 1 .. line_length LOOP
		retval := substr(line, i, 1) || retval;
	END LOOP;
	RETURN retval;
END;
$$ LANGUAGE plpgsql IMMUTABLE STRICT; -- STRICT указывает, что функция всегда возвращает null, если любой из ее аргументов равен нулю.

SELECT reverse_for('2223334455');

CREATE FUNCTION reverse_rof (line text) RETURNS text
AS $$
DECLARE
	line_length CONSTANT int := length(line);
	retval text := '';
BEGIN
	FOR i IN REVERSE line_length .. 1 LOOP
		retval := retval || substr(line, i, 1);
	END LOOP;
	RETURN retval;
END;
$$ LANGUAGE plpgsql IMMUTABLE STRICT;

SELECT reverse_for('2223334455'), reverse_rof('2223334455');

CREATE FUNCTION reverse_loop (line text) RETURNS text
AS $$
DECLARE
	line_length CONSTANT int := length(reverse_loop.line); -- метка - название функции - создается по умолчанию
	i int := 1;
	retval text := '';
BEGIN 
	<<main_loop>>
	LOOP
		EXIT main_loop WHEN i > line_length;
		retval := substr(reverse_loop.line, i, 1) || retval;
		i := i + 1;
	END LOOP;
	RETURN retval;
END;
$$ LANGUAGE plpgsql IMMUTABLE STRICT;

SELECT reverse_loop('2223334455');
```

## Ананимные блоки

Выполнить несколько команд - не создавая функцию в системном каталоге БД

```sql
-- по умолчанию PL/pgSql
DO [LANGUAGE имя_языка] код;

-- Пример
DO $$
/* Многострочный
	комментарий */
	var1 text;
	var2 text := 'World';
BEGIN
	-- тут можно объявить вложенный блок
	var1 := 'Hello, '
	RAISE NOTICE '%, %', var1, var2; -- вывод сообщений
END;
$$;

```

## Условные операторы

1. IF
2. CASE - произвольные условия (из диапозона == IF, в CASE хотябы в одну ветку должны поасть)
3. CASE - условие из списка по выражению

### IF

```sql
IF условие THEN
	операторы
[ELSIF условие THEN
	операторы]
[ELSE
	операторы]
END IF;
```

### CASE

```sql
CASE 
	WHEN условие THEN
		операторы
	[WHEN условие THEN
		операторы]
	[ELSE
		операторы]
END CASE;
```

```sql
CASE выражение
	WHEN значение [, ...] THEN
		операторы
	[WHEN значение [, ...] THEN
		операторы]
	[ELSE
		операторы]
END CASE;
```

### FOR

```sql
<<метка>>
FOR имя IN низ .. верх [BY инкримент]
LOOP
	операторы
END LOOP;

<<метка>>
FOR имя IN REVERSE верх .. низ [BY инкримент]
LOOP
	операторы
END LOOP;
```

### WHILE

```sql
<<метка>>
WHILE условие
LOOP
	операторы
END LOOP;
```

### Безусловный цикл

```sql
<<метка>>
LOOP
	...
	EXIT [метка] [WHEN условие]; -- выход из цикла по условию
	...
	[CONTINUE [метка] [WHEN условие];] -- переход на следующую итерацию
	...
END LOOP;
```
## psql

Процедурные языки начинаются на `pl`

`\dL` - список установленных языков

Посмотреть 
```sql
-- Вывести языки, которые можно доустановить через расширения
SELECT name, installed_version, comment
FROM pg_avalible_extension
WHERE name LIKE 'pl%';

-- Установка расширений
CREATE EXTENSION plperl;
CREATE EXTENSION plperlu;
```

# Тема 12

Анонимные подготовленные операторы

SELECT без получения результата, а для вызова функций
SELECT -> PERFORM (без получения результата)
WITH не сочетается с PERFORM

## Одна строка результата

SELECT выражения INTO [STRICT] цель

INTO - вставить в (первая строка из ORDER BY) - ошибка, если больше одной строки
STRICT - гарантирует, что строчка ровно одна - ошибка, если строк нет или больше одной

INSERT ...
UPDATE ... RETURNING выражение INTO [STRICT] цель
DELETE ...

RETURNING вернул больше одной строки то ошибка
RETURNING не вернул ничего, то это нормально
RETURNING STRICT - ровно одна строчка, иначе ошибка

## Сбор статистики

### Сколько строчек было затронуто?

Признак найденных строк - переменная `FOUND`
TRUE - было изменение строк, FALSE - не было изменения строк

Число строк, возвращенное последней командой SQL
`GET DIAGNOSTIC переменная := ROW_COUNT;`

### Табличные функции

#### Строки запроса

RETURN QUERY запрос;

#### Одна строка

Накапливаются в специальном буфере до за вершения выполнения функции

RETURN NEXT выражение;

RETURN NEXT;

```sql
CREATE TABLE t(id integer, code text);

INSERT INTO t VALUES (1, 'Раз'), (2, 'Два');

DO $$
DECLARE
	r record;
BEGIN
	SELECT id, code INTO r FROM t WHERE id = 1;
	RAISE NOTICE '%', r;
END;
$$;
```
# Подход к устранению неоднозначностей

1. Венгерская нотация (префиксы)
  
   \- Требуется заранее договариваться об именовании переменных до проекта

   \- Не работает для столбцов начинающихся на префиксы (l_, v_, p_, c_)

2. Использование квалификаторов имен (через точку прописывается уточняющий квалификатор)

   \+ Работает для любых названий столбцов

## Венгерская нотация

> Подход к устранению неоднозначностей
>
> Добавляется префикс:
> p_ (parametr) - для параметров 
> l_ (local) или v_ (variable) - для переменных 
> с_ (constant) - для констант

```sql
DO $$
DECLARE
	l_id integer := 1;
	l_code text;
BEGIN
	SELECT id, code INTO l_id, l_code FROM t WHERE id = l_id;
	RAISE NOTICE '%, %', l_id, l_code;
END;
$$;
```

## Использование квалификаторов имен

> 
>
>
>

```sql
DO $$
<<local>>
DECLARE
	id integer := 1;
	code text;
BEGIN
	SELECT t.id, t.code INTO local.id, local.code FROM t WHERE t.id = local.id;
	RAISE NOTICE '%, %', local.id, local.code;
END;
$$;
```

STRICT

```sql
DO $$
DECLARE
	l_rec record;
BEGIN
	SELECT t.id, t.code INTO l_rec FROM t;
	RAISE NOTICE '%', l_rec;
END;
$$;

DO $$
DECLARE
	l_rec record;
BEGIN
	l_rec := (-1, '!!!');
	SELECT t.id, t.code INTO l_rec FROM t WHERE FALSE;
	RAISE NOTICE '%', l_rec;
END;
$$;

-- STRICT гарантирует точно одну строку, иначе исключение
-- Удобно делать когда берем информацию из справочника по идентификатору - где точно только одна строка должна быть 
DO $$
DECLARE
	l_rec record;
	l_rowcount integer;
BEGIN
	l_rec := (-1, '!!!');
	SELECT t.id, t.code INTO STRICT l_rec FROM t; -- 'запрос вернул нескольк строк' // ОШИБКА
	--SELECT t.id, t.code INTO l_rec FROM t; -- (1, "Раз") или (2, "Два") // row_count = 1, found = t
	--PERFORM t.id, t.code FROM t; -- игнорируется ответ // row_count = 2, found = t
	--SELECT t.id, t.code INTO l_rec FROM t WHERE FALSE; -- (,) // т.е. (null, null) // row_count = 0, found = f
	RAISE NOTICE '%', l_rec;

	GET DIAGNOSTICS l_rowcount = ROW_COUNT;
	RAISE NOTICE 'rowcount = %', l_rowcount; -- количество возвращенных строк (!Если есть блок INTO, то количество присвоенных строк)
	RAISE NOTICE 'found = %', FOUND; -- был ли найден результат
END;
$$;
/*ОШИБКА:  запрос вернул несколько строк
ПОДСКАЗКА:  Измените запрос, чтобы он выбирал одну строку, или используйте LIMIT 1.
КОНТЕКСТ:  функция PL/pgSQL inline_code_block, строка 6, оператор SQL-оператор*/

DO $$
DECLARE
	l_rec record;
BEGIN
	l_rec := (-1, '!!!');
	SELECT t.id, t.code INTO STRICT l_rec FROM t WHERE FALSE;
	RAISE NOTICE '%', l_rec;
END;
$$;
/*ОШИБКА:  запрос не вернул строк
КОНТЕКСТ:  функция PL/pgSQL inline_code_block, строка 6, оператор SQL-оператор*/
```

## UPDATE, DELETE, INSERT, которые возвращаю значения

> RETURNING 

```sql
DO $$
DECLARE
	r record;
BEGIN
	UPDATE t SET code = code || '!' WHERE id = 1 RETURNING * INTO r;
	--UPDATE t SET code = code || '!' WHERE id = 1 RETURNING * INTO STRICT r;
	RAISE NOTICE 'Изменили: %', r;
	RAISE NOTICE 'found = %', FOUND;
END;
$$;

SELECT * FROM t;
```

### Табличные функции

> Вернуть то что лежит в табличке 

```sql
CREATE FUNCTION t() RETURNS TABLE(LIKE t) AS $$
BEGIN
	RETURN QUERY SELECT id, code FROM t ORDER BY id;
END;
$$ STABLE LANGUAGE plpgsql;

SELECT * FROM t();
```

> Вернуть построчно 

```sql
CREATE FUNCTION days_of_week() RETURNS SETOF text AS $$
BEGIN
	FOR i IN 7 .. 13 LOOP
		RETURN NEXT to_char(to_date(i::text, 'J'), 'TMDy'); -- TMDy текущее значение локали
	END LOOP;
END;
$$ STABLE LANGUAGE plpgsql; -- STABLE 

SELECT * FROM days_of_week() WITH ORDINALITY;
```

# Тема 13 Курсоры

1. Несвязанные с запросом курсорные переменные `refcursor`

2. Связанные с запросом курсорные переменные

С курсорами в pg/plSQL только построчная выборка

> Выборка
> 
> FETCH INTO цель

> Обновление или удаление текущей строки
> 
> WHERE CURENT OF

Закрытие курсора:

1. Заканчивается транзакция

2. Вызов CLOSE


```sql
-- Работа с курсором в цикле
--- размер выборки 1 строка
OPEN курсорная_переменная FOR запрос;
LOOP
	FETCH курсорная_переменная INTO цель;
	EXIT WHEN NOT FOUND;
	тело_цикла
END LOOP;
CLOSE курсорная_переменная;

-- Сокращенный вариант
--- автоматически переменная курсора, авто закрытие курсора, размер выборки 10 строчек
FOR запись IN курсорная_переменная LOOP
	тело_цикла
END LOOP;	
```

```sql
INSERT INTO t VALUES (3, 'Три');

-- Вариант 1
DO $$
DECLARE
	-- объявление курсорной переменной 
	cur refcursor;
BEGIN	
	-- связывание с запросом и открытие курсора
	OPEN cur FOR SELECT * FROM t;
END;
$$;

-- Вариант 2
DO $$
DECLARE
	-- объявление и связывание с запросом переменной
	cur CURSOR FOR SELECT * FROM t; -- тип refcursor
BEGIN	
	-- открытие курсора
	OPEN cur;
END;
$$;

-- С параметрами
DO $$
DECLARE
	-- объявление и связывание с запросом переменной
	cur CURSOR(id integer) FOR SELECT * FROM t WHERE t.id = cur.id;
BEGIN	
	-- открытие курсора
	OPEN cur(1);
END;
$$;

DO $$
<<local>>
DECLARE
	id integer := 3;
	-- объявление и связывание переменной
	cur CURSOR FOR SELECT * FROM t WHERE t.id = local.id;
BEGIN
	id := 1;
	-- открытие курсора (значение id берется на этот момент)
	OPEN cur; -- id = 1
END;
$$;

-- Чтение данных из курсора
DO $$
DECLARE
	cur refcursor;
	rec record;
BEGIN
	OPEN cur FOR SELECT * FROM t ORDER BY id;
	MOVE cur; -- пропустить одну запись
	FETCH cur INTO rec; -- прочитать запись
	RAISE NOTICE '%', rec;
	CLOSE cur;
END;
$$;
```

## Чтение в циклах

```sql
-- !ВАЖНО Чтение данных в цикле
DO $$
DECLARE
	cur refcursor;
	rec record;
BEGIN
	OPEN cur FOR SELECT * FROM t;
	LOOP
		FETCH cur INTO rec;
		EXIT WHEN NOT FOUND;
		RAISE NOTICE '%', rec;
	END LOOP;
	CLOSE cur;
END;
$$;

DO $$
DECLARE
	cur CURSOR FOR SELECT * FROM t;
BEGIN
	FOR rec IN cur LOOP -- cur должна быть связана с запросом
		RAISE NOTICE '%', rec;
	END LOOP;
END;
$$;

-- Выборка по 10 строк, если не требуется работать с курсорной переменной вне цикла
DO $$
DECLARE
	rec record; -- надо объявить явно
BEGIN
	FOR rec IN (SELECT * FROM t) LOOP 
		RAISE NOTICE '%', rec;
	END LOOP;
END;
$$;

DO $$
DECLARE
	rec_outer record;
	rec_inner record;
BEGIN
	<<OUTER>>
	FOR rec_outer IN (SELECT * FROM t ORDER BY id) LOOP 
		<<INNER>>
		FOR rec_inner IN (SELECT * FROM t ORDER BY id) LOOP
			EXIT OUTER WHEN rec_inner.id = 3; -- 1,1 : 1,2
			-- CONTINUE OUTER WHEN rec_inner.id = 3; -- 1,1 : 1,2 : 2,1 : 2,2 : 3,1 : 3,2
			RAISE NOTICE '%, %', rec_outer, rec_inner;
		END LOOP;
	END LOOP;
END;
$$;

DO $$
DECLARE
	rec record;
BEGIN
	FOR rec IN (SELECT * FROM t WHERE false) LOOP
		RAISE NOTICE '%', rec;
	END LOOP;
	RAISE NOTICE 'Была ли как минимум одна итерация? %', FOUND; -- f
END;
$$;

-- Удалить из таблицы все строки, выведя их 
-- Откатить транзакцию
BEGIN;
DELETE FROM t RETURNING *;
ROLLBACK;
```

## Обновление или удаление текущей строки

```sql
DO $$
DECLARE
	cur refcursor;
	rec record;
BEGIN
	OPEN cur FOR SELECT * FROM t FOR UPDATE;
	LOOP
		FETCH cur INTO rec;
		EXIT WHEN NOT FOUND;
		UPDATE t SET code = code || ' (обработано)' WHERE CURRENT OF cur; -- построчное обновление
	END LOOP;
	CLOSE cur;
END;
$$;
```

## Открытие курсора и передача его клиенту

```sql
DO $$
DECLARE
	cur refcursor;
	-- cur refcursor := 'cursor12345'; -- задать уникальное имя курсора (портала) на сервере
BEGIN
	OPEN cur FOR SELECT * FROM t;
	RAISE NOTICE '%', cur; -- ЗАМЕЧАНИЕ: <unnamed portal 10> - имя курсора (портала), который был открыт на сервере
END;
$$;

-- функция для создания и возврата курсора
CREATE FUNCTION t_cur() RETURNS refcursor AS $$
DECLARE
	cur refcursor;
BEGIN
	OPEN cur FOR SELECT * FROM t;
	RETURN cur;
END;
$$ VOLATILE LANGUAGE plpgsql;

BEGIN;
SELECT t_cur() AS curname \gset -- в переменную curname поместить значение курсора
\echo :curname
FETCH :"curname"; -- кавычки нужны из-за угловых скобок в имени
COMMIT; -- закрытие курсора в конце транзакции


-- Клиент сам может установить имя курсора
CREATE FUNCTION t_cur_sam(cur refcursor) RETURNS void AS $$
BEGIN
	OPEN cur FOR SELECT * FROM t;
END;
$$ VOLATILE LANGUAGE plpgsql;

BEGIN;
SELECT t_cur_sam('cur123321');
FETCH cur123321;
COMMIT;

```

