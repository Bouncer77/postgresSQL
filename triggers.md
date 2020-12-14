# Триггеры

<!-- MarkdownTOC autolink="true" -->

- [Определение](#%D0%9E%D0%BF%D1%80%D0%B5%D0%B4%D0%B5%D0%BB%D0%B5%D0%BD%D0%B8%D0%B5)
- [Триггерная функция](#%D0%A2%D1%80%D0%B8%D0%B3%D0%B3%D0%B5%D1%80%D0%BD%D0%B0%D1%8F-%D1%84%D1%83%D0%BD%D0%BA%D1%86%D0%B8%D1%8F)
- [События](#%D0%A1%D0%BE%D0%B1%D1%8B%D1%82%D0%B8%D1%8F)
- [TG-переменные](#tg-%D0%BF%D0%B5%D1%80%D0%B5%D0%BC%D0%B5%D0%BD%D0%BD%D1%8B%D0%B5)
- [Before row](#before-row)
- [Контекст](#%D0%9A%D0%BE%D0%BD%D1%82%D0%B5%D0%BA%D1%81%D1%82)
- [Instead of](#instead-of)
- [After row](#after-row)
- [Событийный триггер](#%D0%A1%D0%BE%D0%B1%D1%8B%D1%82%D0%B8%D0%B9%D0%BD%D1%8B%D0%B9-%D1%82%D1%80%D0%B8%D0%B3%D0%B3%D0%B5%D1%80)
	- [События](#%D0%A1%D0%BE%D0%B1%D1%8B%D1%82%D0%B8%D1%8F-1)
- [Практика](#%D0%9F%D1%80%D0%B0%D0%BA%D1%82%D0%B8%D0%BA%D0%B0)
	- [Transient Tables \(Таблица NEW (начиная с Postgres 10\))](#transient-tables-%D0%A2%D0%B0%D0%B1%D0%BB%D0%B8%D1%86%D0%B0-new-%D0%BD%D0%B0%D1%87%D0%B8%D0%BD%D0%B0%D1%8F-%D1%81-postgres-10)
- [Запись аудита](#%D0%97%D0%B0%D0%BF%D0%B8%D1%81%D1%8C-%D0%B0%D1%83%D0%B4%D0%B8%D1%82%D0%B0)
- [Обновляемое представление \(триггер INSTEAD OF UPDATE\)](#%D0%9E%D0%B1%D0%BD%D0%BE%D0%B2%D0%BB%D1%8F%D0%B5%D0%BC%D0%BE%D0%B5-%D0%BF%D1%80%D0%B5%D0%B4%D1%81%D1%82%D0%B0%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D0%B5-%D1%82%D1%80%D0%B8%D0%B3%D0%B3%D0%B5%D1%80-instead-of-update)
- [Триггер события](#%D0%A2%D1%80%D0%B8%D0%B3%D0%B3%D0%B5%D1%80-%D1%81%D0%BE%D0%B1%D1%8B%D1%82%D0%B8%D1%8F)

<!-- /MarkdownTOC -->

## Определение 

	Объект бд - список обрабатываемых событий при возникновении события вызывается триггерная функция и ей передается контекст

	Триггер выполняется, как чать транзакции 

	Ошибка в триггере приводит к откату транзакции

	Триггеры AFTER ROW обходятся дороже, чем остальные. Так как накабливаются в стеке, а лишь затем исполняются => если меняется больше 10тыс строк за раз лучше не исполльзовать AFTER ROW. **Начиная с PostgresSQL 10 версии есть механизм Transient Tables они удобнее чем триггрера для ROW и в полном объеме заменяют их**

## Триггерная функция

	Объект бд - код обработки события выполняется в той же самой транзакции, что
	и основная операция.

1. Не принимает параметры
2. Возвращает значение псевдотипа `trigger` (фактически record)
3. Может использоваться в нескольких триггерах

## События

1. INSERT, UPDATE, DELETE

Объект бд | что                  | что
----------+----------------------+------------------
таблицы | before/after | statement
таблицы | before/after | row
представления | before/after | statement
представления | instead of | row

* before - до выполнения оператора

* after - после выполнения оператора

* instead of

2. TRUNCATE

таблицы - before/after - statement

3. Условие WHEN

Устанавливает дополнительный фильтр

## TG-переменные

* before/after триггер
* на какую таблицу сработал триггер

## Before row

* Возвращаемое значение (возможно, измененная)/null отменяет действие

> Если на команду DELETE повесить триггер before row, который возвращает null,
> то при удалении 5 записей команда сообщит что было удалено 5 записей, но
> по факту записи не будут удалены

## Контекст

* OLD - update/delete - что за запись удаляется
* NEW - insert/update - тип таблица - все записи которые пользователь пытается добавить
* TG-переменные

## Instead of

	При сложных таблицах, для сокрытия способа хранения информации от
	конечного пользователя используют Представления (View)

	Чтобы сделать вставку данных в представление, необходимо сделать вставку данных в таблицы из которых оно состоит для этого используется INSTEAD OF ROW триггре

> Для представлений - выполняется вместо представления

строка будет видна в RETURNING/null - отменяет действия

## After row

> после операции из стэка вытащит список строк для которого он применяется 
> выполняется до After Statement

## Событийный триггер

event_trigger

### События

Событие | Описание
---     + ---
DDL_COMMAND_START | перед выполнение команды
DDL_COMMAND_END | после выполнения команды
TABLE_REWRITE | перед перезаписью таблицы
SQL_DROP | после удаления объектов

## Практика

**TG_LEVEL:**
* ROW - строчный триггер
* STATEMENT - триггер уровня оператора

**TG_OP**
* UPDATE
* DELETE
* INSERT

```sql
CREATE OR REPLACE FUNCTION describe() RETURNS trigger AS $$
DECLARE
	rec record;
	str text := '';
BEGIN 
	IF TG_LEVEL = 'ROW' THEN -- ROW or STATEMENT
		CASE TG_OP
			WHEN 'DELETE' THEN rec := OLD; str := OLD::text; -- если аернем null строка не удалится
			WHEN 'UPDATE' THEN rec := OLD; str := OLD || ' -> ' || NEW;
			WHEN 'INSERT' THEN rec := NEW; str := NEW::text;
		END CASE;
	END IF;
	-- 
	--                        h              BEFORE   INSERT STATEMENT 
	RAISE NOTICE '% % % % %', TG_TABLE_NAME, TG_WHEN, TG_OP, TG_LEVEL, str;
	RETURN rec;
END;
$$ LANGUAGE plpgsql;

CREATE TABLE h (
	id integer PRIMARY KEY,
	s text
);

CREATE TRIGGER t_before_stmt
BEFORE INSERT OR UPDATE OR DELETE ON h -- OR TRUNCATE
FOR EACH STATEMENT EXECUTE PROCEDURE describe();

CREATE TRIGGER t_after_stmt
AFTER INSERT OR UPDATE OR DELETE ON h
FOR EACH STATEMENT EXECUTE PROCEDURE describe();

CREATE TRIGGER t_before_row
BEFORE INSERT OR UPDATE OR DELETE ON h
FOR EACH ROW EXECUTE PROCEDURE describe();

CREATE TRIGGER t_after_row
AFTER INSERT OR UPDATE OR DELETE ON h
FOR EACH ROW EXECUTE PROCEDURE describe();

INSERT INTO h VALUES (1, 'aaa');
/*
ЗАМЕЧАНИЕ:  h BEFORE INSERT STATEMENT
ЗАМЕЧАНИЕ:  h BEFORE INSERT ROW (2,bbb)
ЗАМЕЧАНИЕ:  h AFTER INSERT ROW (2,bbb)
ЗАМЕЧАНИЕ:  h AFTER INSERT STATEMENT
INSERT 0 1
*/

UPDATE h SET s = 'bbb' WHERE id = 1;
/*
ЗАМЕЧАНИЕ:  h BEFORE UPDATE STATEMENT
ЗАМЕЧАНИЕ:  h BEFORE UPDATE ROW (1,aaa) -> (1,bbb)
ЗАМЕЧАНИЕ:  h AFTER UPDATE ROW (1,aaa) -> (1,aaa)
ЗАМЕЧАНИЕ:  h AFTER UPDATE STATEMENT
UPDATE 1
*/

UPDATE h SET s = 'ccc' WHERE id = 0;
/*
ЗАМЕЧАНИЕ:  h BEFORE UPDATE STATEMENT
ЗАМЕЧАНИЕ:  h AFTER UPDATE STATEMENT
UPDATE 0
*/

INSERT INTO h VALUES (1, 'ccc'), (3, 'ddd')
ON CONFLICT(id) DO UPDATE SET s = EXCLUDED.s;
/*
ЗАМЕЧАНИЕ:  h BEFORE INSERT STATEMENT
ЗАМЕЧАНИЕ:  h BEFORE UPDATE STATEMENT
ЗАМЕЧАНИЕ:  h BEFORE INSERT ROW (1,ccc)               // Ошибка вставки, id = 1 уже есть
ЗАМЕЧАНИЕ:  h BEFORE UPDATE ROW (1,aaa) -> (1,ccc)
ЗАМЕЧАНИЕ:  h BEFORE INSERT ROW (3,ddd)
ЗАМЕЧАНИЕ:  h AFTER UPDATE ROW (1,aaa) -> (1,aaa)
ЗАМЕЧАНИЕ:  h AFTER INSERT ROW (3,ddd)
ЗАМЕЧАНИЕ:  h AFTER UPDATE STATEMENT
ЗАМЕЧАНИЕ:  h AFTER INSERT STATEMENT
INSERT 0 2
*/

DELETE FROM h;
/*
ЗАМЕЧАНИЕ:  h BEFORE DELETE STATEMENT
ЗАМЕЧАНИЕ:  h BEFORE DELETE ROW (1,aaa)
ЗАМЕЧАНИЕ:  h BEFORE DELETE ROW (3,ddd)
ЗАМЕЧАНИЕ:  h AFTER DELETE ROW (1,aaa)
ЗАМЕЧАНИЕ:  h AFTER DELETE ROW (3,ddd)
ЗАМЕЧАНИЕ:  h AFTER DELETE STATEMENT
DELETE 3
*/

-- Переходные таблицы Transient Tables начиная Postgres 10
-- Временная таблица со старым описание изменяемых строк OLD
-- Временная таблица с новым описанием изменяемых строк NEW
```

### Transient Tables (Таблица NEW (начиная с Postgres 10))

	Можно не использовать триггера упровня строки
	Так как есть с Postgres 10 есть временные таблицы NEW и OLD
	Поэтому можно в AFTER DELETED STATEMENT 

## Запись аудита

```sql
CREATE TABLE main(
	id serial PRIMARY KEY,
	s text
);

-- LIKE t - создать таблицу точно такойже структуры
CREATE TABLE main_history(LIKE t);

ALTER TABLE main_history 
ADD start_date timestamp, 
ADD end_date timestamp;

drop table main_history;

-- Любая таблица *_history по LIKE t+ start_date, edn_date
CREATE OR REPLACE FUNCTION history_insert() RETURNS trigger AS $$
BEGIN
	-- $! - целиком полная запись из таблицы NEW
	--!!! current_timestamp , так же как и now() - в рамках транзакции всегда вернет одно и то же текущее время, поэтому время окончания записи и время начала действия другой записи совпадают
	-- NULL - время окончания действия записи | NULL в end_date означает что версия строки действует и на текущий момент
	EXECUTE format('INSERT INTO %I SELECT ($1).*, current_timestamp, NULL',
					TG_TABLE_NAME || '_history') -- из контекста - имя таблицы на которую сработает триггер
	USING NEW;

	RAISE NOTICE 'history_insert() - %', now()::text;

	RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION history_delete() RETURNS trigger AS $$
BEGIN
	-- При удалении активной записи в нее прописывается дата окончания действия записи в _history
	EXECUTE format('UPDATE %I SET end_date = current_timestamp WHERE id = $1 AND end_date IS NULL', 
		TG_TABLE_NAME || '_history')
	USING OLD.id;

	RAISE NOTICE 'history_delete() - %', now()::text;

	RETURN OLD;
END;
$$ LANGUAGE plpgsql;


CREATE TRIGGER main_history_insert
AFTER INSERT OR UPDATE ON main
FOR EACH ROW EXECUTE PROCEDURE history_insert();

CREATE TRIGGER main_history_delete
AFTER UPDATE OR DELETE ON main
FOR EACH ROW EXECUTE PROCEDURE history_delete();

-- UPDATE в данном случае будем использовать для обновления одной строки и добавления другой 

INSERT INTO main VALUES (1, 'Первое значение');

INSERT INTO main VALUES (2, 'Второе значение');

UPDATE main SET s = 'Первое значение (измененное)' WHERE id = 1;

SELECT * FROM main ORDER BY id;
SELECT * FROM main_history ORDER BY id, start_date;

INSERT INTO main VALUES (2, 'Второе значение (измененное)'), (3, 'Третье значение')
ON CONFLICT(id) DO UPDATE SET s = EXCLUDED.s;

DELETE FROM main WHERE id = 1;

-- посмотреть состояние таблицы main на определенный момент времени
SELECT id, code
FROM main_history
WHERE start_date <= '2020-12-09 11:08:16.596174' AND '2020-12-09 11:08:16.596174' < end_date
ORDER BY id;

```

## Обновляемое представление (триггер INSTEAD OF UPDATE)

	Позиция (items)
	Строки запросов (order_lines)

```sql
CREATE TABLE items (
	id serial PRIMARY KEY,
	description text NOT NULL,
	CONSTRAINT items_desc_unique UNIQUE(description)
);

CREATE TABLE order_lines(
	id serial PRIMARY KEY,
	item_id integer NOT NULL REFERENCES items(id),
	qty integer NOT NULL
);

INSERT INTO items(description) VALUES ('Болт');
INSERT INTO items(description) VALUES ('Гайка');
INSERT INTO items(description) VALUES ('Шуруп');

INSERT INTO order_lines(item_id, qty) VALUES (2 /*Гайка*/, 50);
INSERT INTO order_lines(item_id, qty) VALUES (1 /*Болт*/, 100);

-- создадим представление для наглядности
CREATE VIEW order_lines_v AS 
SELECT ol.id, i.description, ol.qty
FROM order_lines ol JOIN items i ON ol.item_id = i.id;

SELECT * FROM order_lines_v;




UPDATE order_lines_v SET description = 'Шуруп' WHERE id = 1;
/*
ОШИБКА:  изменить данные в представлении "order_lines_v" нельзя
ПОДРОБНОСТИ:  Представления, выбирающие данные не из одной таблицы или представления, не обновляются автоматически.
ПОДСКАЗКА:  Чтобы представление допускало изменение данных, установите триггер INSTEAD OF UPDATE или безусловное правило ON UPDATE DO INSTEAD.
*/

CREATE OR REPLACE FUNCTION view_update() RETURNS trigger AS $$
BEGIN
	UPDATE order_lines
	SET item_id = (SELECT id FROM items WHERE description = NEW.description), -- смена описания
		qty = NEW.qty -- смена количества
	WHERE id = OLD.id;
	RETURN NEW; -- если пользователь укажет RETURNING - то увидит новые значения
EXCEPTION 
	WHEN not_null_violation THEN
		RAISE EXCEPTION 'Указанной позиции "%" не существует', NEW.description;
	END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER order_lines_v_upd
INSTEAD OF UPDATE ON order_lines_v
FOR EACH ROW EXECUTE PROCEDURE view_update();

SELECT * FROM order_lines;

-- Для всех строк увеличить значение qty на 10
UPDATE order_lines_v SET qty = qty + 10 RETURNING *;

-- Обновление описания позиции
UPDATE order_lines_v SET description = 'Шуруп' WHERE id = 1 RETURNING *;

SELECT * FROM order_lines;
```

## Триггер события

```sql
CREATE OR REPLACE FUNCTION describe_ddl() RETURNS event_trigger AS $$
DECLARE
	r record;
BEGIN
	-- Для события DDL_COMAND контекст вызова в специальной функции
	-- Набор DDL команд, порожденные вызовом одной команды 
	FOR r IN SELECT * FROM pg_event_trigger_ddl_commands() LOOP
		RAISE NOTICE '%. тип: %, OID: %, имя: %',
		-- тип_команды, тип объекта, объект, идентификатор объекта
			r.command_tag, r.object_type, r.objid, r.object_identity;
	END LOOP;

	-- Функции триггера событий не нужно возвращать значение
END;
$$ LANGUAGE plpgsql;

CREATE EVENT TRIGGER after_ddl
ON ddl_command_end EXECUTE PROCEDURE describe_ddl();

CREATE TABLE t3 (id serial PRIMARY KEY);
/*
ЗАМЕЧАНИЕ:  CREATE SEQUENCE. тип: sequence, OID: 17350, имя: public.t3_id_seq
ЗАМЕЧАНИЕ:  CREATE TABLE. тип: table, OID: 17352, имя: public.t3
ЗАМЕЧАНИЕ:  CREATE INDEX. тип: index, OID: 17356, имя: public.t3_pkey
ЗАМЕЧАНИЕ:  ALTER SEQUENCE. тип: sequence, OID: 17350, имя: public.t3_id_seq  // привязывание последовательности к столбцу таблицы
CREATE TABLE
*/
```

