<!-- MarkdownTOC autolink="true" -->

- [Команды psql](#%D0%9A%D0%BE%D0%BC%D0%B0%D0%BD%D0%B4%D1%8B-psql)
	- [Подключение](#%D0%9F%D0%BE%D0%B4%D0%BA%D0%BB%D1%8E%D1%87%D0%B5%D0%BD%D0%B8%D0%B5)
	- [Получить справку по командам](#%D0%9F%D0%BE%D0%BB%D1%83%D1%87%D0%B8%D1%82%D1%8C-%D1%81%D0%BF%D1%80%D0%B0%D0%B2%D0%BA%D1%83-%D0%BF%D0%BE-%D0%BA%D0%BE%D0%BC%D0%B0%D0%BD%D0%B4%D0%B0%D0%BC)
	- [Основные команды](#%D0%9E%D1%81%D0%BD%D0%BE%D0%B2%D0%BD%D1%8B%D0%B5-%D0%BA%D0%BE%D0%BC%D0%B0%D0%BD%D0%B4%D1%8B)
	- [Формат вывода даты и времени](#%D0%A4%D0%BE%D1%80%D0%BC%D0%B0%D1%82-%D0%B2%D1%8B%D0%B2%D0%BE%D0%B4%D0%B0-%D0%B4%D0%B0%D1%82%D1%8B-%D0%B8-%D0%B2%D1%80%D0%B5%D0%BC%D0%B5%D0%BD%D0%B8)
		- [По умолчанию](#%D0%9F%D0%BE-%D1%83%D0%BC%D0%BE%D0%BB%D1%87%D0%B0%D0%BD%D0%B8%D1%8E)
		- [Как сменить формат ввода и вывода даты](#%D0%9A%D0%B0%D0%BA-%D1%81%D0%BC%D0%B5%D0%BD%D0%B8%D1%82%D1%8C-%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%82-%D0%B2%D0%B2%D0%BE%D0%B4%D0%B0-%D0%B8-%D0%B2%D1%8B%D0%B2%D0%BE%D0%B4%D0%B0-%D0%B4%D0%B0%D1%82%D1%8B)
	- [Клонирование базы данных](#%D0%9A%D0%BB%D0%BE%D0%BD%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5-%D0%B1%D0%B0%D0%B7%D1%8B-%D0%B4%D0%B0%D0%BD%D0%BD%D1%8B%D1%85)
	- [Сравнение планов выполнения запросов через vimdiff](#%D0%A1%D1%80%D0%B0%D0%B2%D0%BD%D0%B5%D0%BD%D0%B8%D0%B5-%D0%BF%D0%BB%D0%B0%D0%BD%D0%BE%D0%B2-%D0%B2%D1%8B%D0%BF%D0%BE%D0%BB%D0%BD%D0%B5%D0%BD%D0%B8%D1%8F-%D0%B7%D0%B0%D0%BF%D1%80%D0%BE%D1%81%D0%BE%D0%B2-%D1%87%D0%B5%D1%80%D0%B5%D0%B7-vimdiff)
	- [Текстовый редактор](#%D0%A2%D0%B5%D0%BA%D1%81%D1%82%D0%BE%D0%B2%D1%8B%D0%B9-%D1%80%D0%B5%D0%B4%D0%B0%D0%BA%D1%82%D0%BE%D1%80)
		- [Как установить Sublime Text 3 в качестве редактора по умолчанию](#%D0%9A%D0%B0%D0%BA-%D1%83%D1%81%D1%82%D0%B0%D0%BD%D0%BE%D0%B2%D0%B8%D1%82%D1%8C-sublime-text-3-%D0%B2-%D0%BA%D0%B0%D1%87%D0%B5%D1%81%D1%82%D0%B2%D0%B5-%D1%80%D0%B5%D0%B4%D0%B0%D0%BA%D1%82%D0%BE%D1%80%D0%B0-%D0%BF%D0%BE-%D1%83%D0%BC%D0%BE%D0%BB%D1%87%D0%B0%D0%BD%D0%B8%D1%8E)
	- [Поиск по словам \(Только в Linux и MAC OS\)](#%D0%9F%D0%BE%D0%B8%D1%81%D0%BA-%D0%BF%D0%BE-%D1%81%D0%BB%D0%BE%D0%B2%D0%B0%D0%BC-%D0%A2%D0%BE%D0%BB%D1%8C%D0%BA%D0%BE-%D0%B2-linux-%D0%B8-mac-os)
	- [Дополнение слов \(Только в Linux и MAC OS\)](#%D0%94%D0%BE%D0%BF%D0%BE%D0%BB%D0%BD%D0%B5%D0%BD%D0%B8%D0%B5-%D1%81%D0%BB%D0%BE%D0%B2-%D0%A2%D0%BE%D0%BB%D1%8C%D0%BA%D0%BE-%D0%B2-linux-%D0%B8-mac-os)
	- [Преобразовать таблицу в формат CSV, EXCEL](#%D0%9F%D1%80%D0%B5%D0%BE%D0%B1%D1%80%D0%B0%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D1%8C-%D1%82%D0%B0%D0%B1%D0%BB%D0%B8%D1%86%D1%83-%D0%B2-%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%82-csv-excel)
		- [Вариант 1](#%D0%92%D0%B0%D1%80%D0%B8%D0%B0%D0%BD%D1%82-1)
		- [Вариант 2](#%D0%92%D0%B0%D1%80%D0%B8%D0%B0%D0%BD%D1%82-2)
		- [Вариант 3 - утилита psql2csv](#%D0%92%D0%B0%D1%80%D0%B8%D0%B0%D0%BD%D1%82-3---%D1%83%D1%82%D0%B8%D0%BB%D0%B8%D1%82%D0%B0-psql2csv)
	- [Вариант взаимодействия](#%D0%92%D0%B0%D1%80%D0%B8%D0%B0%D0%BD%D1%82-%D0%B2%D0%B7%D0%B0%D0%B8%D0%BC%D0%BE%D0%B4%D0%B5%D0%B9%D1%81%D1%82%D0%B2%D0%B8%D1%8F)
	- [Настройки](#%D0%9D%D0%B0%D1%81%D1%82%D1%80%D0%BE%D0%B9%D0%BA%D0%B8)
		- [Выполнить команду Shell \\!](#%D0%92%D1%8B%D0%BF%D0%BE%D0%BB%D0%BD%D0%B8%D1%82%D1%8C-%D0%BA%D0%BE%D0%BC%D0%B0%D0%BD%D0%B4%D1%83-shell-)
	- [Выводить кирилицу](#%D0%92%D1%8B%D0%B2%D0%BE%D0%B4%D0%B8%D1%82%D1%8C-%D0%BA%D0%B8%D1%80%D0%B8%D0%BB%D0%B8%D1%86%D1%83)
	- [Терминальный пейджер](#%D0%A2%D0%B5%D1%80%D0%BC%D0%B8%D0%BD%D0%B0%D0%BB%D1%8C%D0%BD%D1%8B%D0%B9-%D0%BF%D0%B5%D0%B9%D0%B4%D0%B6%D0%B5%D1%80)
	- [Форматирование вывода pset](#%D0%A4%D0%BE%D1%80%D0%BC%D0%B0%D1%82%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5-%D0%B2%D1%8B%D0%B2%D0%BE%D0%B4%D0%B0-pset)
		- [Взаимодействие с ОС и выполнение скриптов](#%D0%92%D0%B7%D0%B0%D0%B8%D0%BC%D0%BE%D0%B4%D0%B5%D0%B9%D1%81%D1%82%D0%B2%D0%B8%D0%B5-%D1%81-%D0%9E%D0%A1-%D0%B8-%D0%B2%D1%8B%D0%BF%D0%BE%D0%BB%D0%BD%D0%B5%D0%BD%D0%B8%D0%B5-%D1%81%D0%BA%D1%80%D0%B8%D0%BF%D1%82%D0%BE%D0%B2)
	- [Динамические команды - Создать выполняемый SQL скрипт и запустить его](#%D0%94%D0%B8%D0%BD%D0%B0%D0%BC%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%B8%D0%B5-%D0%BA%D0%BE%D0%BC%D0%B0%D0%BD%D0%B4%D1%8B---%D0%A1%D0%BE%D0%B7%D0%B4%D0%B0%D1%82%D1%8C-%D0%B2%D1%8B%D0%BF%D0%BE%D0%BB%D0%BD%D1%8F%D0%B5%D0%BC%D1%8B%D0%B9-sql-%D1%81%D0%BA%D1%80%D0%B8%D0%BF%D1%82-%D0%B8-%D0%B7%D0%B0%D0%BF%D1%83%D1%81%D1%82%D0%B8%D1%82%D1%8C-%D0%B5%D0%B3%D0%BE)
		- [Переменные psql](#%D0%9F%D0%B5%D1%80%D0%B5%D0%BC%D0%B5%D0%BD%D0%BD%D1%8B%D0%B5-psql)
	- [copy](#copy)
- [Тема 02](#%D0%A2%D0%B5%D0%BC%D0%B0-02)
	- [Курсоры](#%D0%9A%D1%83%D1%80%D1%81%D0%BE%D1%80%D1%8B)
	- [Процессы Postgres](#%D0%9F%D1%80%D0%BE%D1%86%D0%B5%D1%81%D1%81%D1%8B-postgres)

<!-- /MarkdownTOC -->


# Команды psql

Программа psql — интерактивный терминал PostgreSQL 

Следует различать команды языка SQL и команды утилиты psql. Команды, начинающиеся с символа «n», являются командами, которые утилита psql предлагает для удобства пользователя.

окончанием выражения для команды с \ является перевод строки, а не точка с запятой

## Подключение

```bash
psql -h hostname -p 5432 -d dbname -U username -W
```

* W - пароль 


## Получить справку по командам

В терминале:
1. $ psql --help
2. $ man psql

В psql:

Команда | Описание
--------|-----------------------------------------
\?      | список команд psql
\? variables | переменные psql
\h[elp] | список команд SQL
\h команда | синтаксис команды SQL \h CREATE TABLE

## Основные команды

Команда | Описание
--------|-----------------------------------------
\с[onnection] <имя_бд> | подключение к базе данных
\conninfo | Информация о текущем подключение: база данных, имя пользователя, сокет, порт
\x      | Переключает традиционный табличный вывод (столбцы и строки) на 		расширенный (каждый столбец на отдельной строке) и обратно. Удобно для просмотра нескольких «широких» строк
\l      | Список баз данных
\du     | Список пользователей
\d [имя_объекта]  | информация по конкретному объекту базы данных (таблица, последовательность, индексы, триггеры)
\d+ [имя_объекта] | подробная информация по конкретному объекту (таблица, последовательность)
\dt [имя_таблицы] | Список таблиц и представлений (\dt user\* список таблиц начинающихся на 'user')
\di     | Список индексов
\dv     | Список представлений
\df     | Список функций
\dn     | Список схем
\dx     | Список установленных расширений
\dp     | Список привилегий
\timing | on Показывать время выполнения операторов
\q      | завершить сеанс
\!      | Выход в шел без прерывания сессии работы с базой данных
\e      | Редактирование запросов во внешнем редакторе (export PSQL_EDITOR="vim")
\ef <procedure name>       | Редактирование хранимой или функции процедуры
\copy   | импортировать целые таблицы или результаты запросов в файлы и экспортировать данных из файлов в таблицы
\! chcp 1251 | сменить кодировку консоли
\conninfo    | Вывести информацию о соединение
\i 'C:\\Projects\\notes\\Postgres\\test_db\\create.sql' | Выполнить скрипт c набором команд на sql и/или psql
\q или \exit или \quit | выход из psql
\o <имя_файла> | переключатель / вывести результат в файл
\g или ; | завершение команды в psql
<Ctrl>+<C> | прервать ввод команды
\s имя-файла-для-сохранения-истории-команд | сохранить всю историю выполненных вами команд в текстовом файле

## Формат вывода даты и времени

### По умолчанию

Под вводом понимается команда - SELECT

Под выводом - результат выполнения команды SELECT

**Формат ввода по умолчанию**:`SHOW datestyle;` -- ISO, DMY -- Формат вывода (ISO) (Год-Месяц-День), Формат ввода (DMY) (День-Месяц-Год)

	SELECT '18-05-2016'::date; -- ввод
	-- 2016-05-18 -- вывод

### Как сменить формат ввода и вывода даты

1. postgresql.conf -> 
2. PGDATESTYLE -> `PGDATESTYLE="Postgres" psql -d test -U имя-пользователя`
3. SET

SET datestyle TO 'MDY'; -- изменить формат ввода (SELECT) 
SELECT '05-18-2016'::date; -- 2016-05-18

SET datestyle TO DEFAULT; -- установить значения по умолчанию - ISO, DMY

SET datestyle TO 'Postgres, DMY'; -- Postgres, DMY -- Формат вывода (Postgres) (День-Месяц-Год), Формат ввода (DMY) (День-Месяц-Год)

Формат вывода даты, времени и часового пояса (`now()`):

№  | Формат вывода (результат команды `SELECT`) | now() 
---|--------------------------------------------|------------------------ 
1  | ISO (по умолчанию) | 2020-12-17 16:41:12.637665+03
2  | Postgres           | Thu 17 Dec 16:45:24.512806 2020 MSK
3  | SQL                | 17/12/2020 16:46:00.736832 MSK
4  | German             | 17.12.2020 16:46:28.826247 MSK

## Клонирование базы данных

```sql
createdb -T app_db app_db_backup -- копирование app_db -> app_db_backup  (-T Template Шаблон)

createdb -T app_db_backup app_db_2 -- восстановление - теперь app_db точно такая же, как app_db_2
```

## Сравнение планов выполнения запросов через vimdiff

```sql
\o a.txt
EXPLAIN SELECT * FROM users WHERE id IN (SELECT user_id FROM groups WHERE name = 'admins');
\o b.txt
EXPLAIN SELECT users.* FROM users LEFT JOIN groups WHERE groups.name = 'admins';
\! vimdiff a.txt b.txt
```

## Текстовый редактор 

\! touch foo.sql
\e foo.sql -- при сохранение, а затем выходе из блокнота выполниться foo.sql


### Как установить Sublime Text 3 в качестве редактора по умолчанию

[Инструкция на английском](https://www.cybertec-postgresql.com/en/psql_editor-fighting-with-sublime-text-under-windows/)

Sublime Text включает инструмент командной строки subl для работы с файлами в командной строке.

psqlзапускает редактор, а затем ожидает завершения процесса редактирования. Но sublэто всего лишь специальный инструмент, который на самом деле запускается, sublime.exe,а потом просто умирает. Так что psql получает сигнал о subl завершении и возврате, но временный файл еще даже не редактировался.

Если указать -w, команда subl не завершится, пока файл не будет закрыт, но при этом придется полностью закрывать Sublime Text 3, а не файл в котором идет редактирование

Передать параметр -w[ait] в Windows 10 нельзя, но можно простой пакетный скрипт в домашнем каталоге пользователя, который решит проблему

Путь по умолчанию: SET PSQL_EDITOR=C:\Program Files\Sublime Text 3\subl.exe
Мой путь: SET PSQL_EDITOR=C:\App\SublimeText3\subl.exe

```cmd
ECHO @ECHO OFF > %USERPROFILE%\subl.bat
ECHO "C:\App\SublimeText3\subl.exe" --wait %* >> %USERPROFILE%\subl.bat

type %USERPROFILE%\subl.bat
-- проверить файл

SET PSQL_EDITOR=%USERPROFILE%\subl.bat
-- или из под psql: \setenv PSQL_EDITOR "%USERPROFILE%\subl.bat" 

psql -U postgres
\e
-- пишем запрос в Sublime Text 3: SELECT version();
-- закрываем файл
```

Доступно несколько синонимов PSQL_EDITOR, EDITOR, VISUAL

\ef <procedure name> -  Редактирование хранимой процедуры

CREATE OR REPLACE FUNCTION - после сохранения и закрытия редактора функция будет обновлена

сли же вам нужно только посмотреть описание функции, то закройте редактор с помощью ненулевого кода возврата (для vim это :cq). Таким образом она не будет обновлена и выполнена. psql в таком случае понимает, что что-то пошло не так, и не будет ничего делать.

## Поиск по словам (Только в Linux и MAC OS)

\h <имя_команды> -- \h alter
/ + текст для поиска + <enter> -- /NULL
n и N - переход по найденным словам; n - вперед, N - назад
q - выйти из поиска

Пример: Найти описание синтаксиса SQL для удаления ограничение NOT NULL в таблице
1. \h ALTER
2. /NULL
3. n (до строки 'ALTER TABLE table_name ALTER column_name DROP NOT NULL;')
4. q

## Дополнение слов (Только в Linux и MAC OS)

+ TAB - Дополнение до слова
	
	sel<TAB> => SELECT 

+ 2xTAB - Список слов до которых можно дополнить



## Преобразовать таблицу в формат CSV, EXCEL

### Вариант 1

Команда | Комментарий
---     | ---
\a | Выключить выравниевание
\t | Убрать заголовок таблицы и строку с количеством найденных строк (итоговая строка)
\o[ut] output.csv | Перенаправить станлартный поток вывода в файл output.csv
\pset fieldsep ',' | Установить разделяющий колонки символ на ','
select * from <имя_таблицы>; | выполнить запрос
\o | Вернуть вывод в консоль
\a | Включить выравниевание
\t | Вернуть заголовок таблицы и итоговую строку 
\pset fieldsep '\|' | Установить разделяющий колонки символ по умолчанию (на '\|')

### Вариант 2
мета-команды \copy или SQL команды COPY

```sql
-- окончанием выражения для команды с \ является перевод строки, а не точка с запятой
\copy (SELECT ...) TO export.csv WITH (FORMAT csv, HEADER true)
-- <=>
COPY (SELECT ...)
TO '/absolute/path/export.csv' -- путь к файлу должен быть абсолютным + только на локальную файловую систему
WITH (FORMAT csv, HEADER true);
```

EXCEL не дружит с кодировкой UTF-8, лучше использовать latin1

```sql
\copy (SELECT ...) TO export.csv WITH (FORMAT csv, HEADER true, ENCODING 'latin1')
```

### Вариант 3 - утилита psql2csv

Она позволяет запускать запрос из файла и получать отформатированный CSV в STDOUT (который можно потом перенаправить в файл)

```sql
psql2csv database < query.sql > export.csv
-- или
psql2csv database 'SELECT ...' > export.csv
```


## Вариант взаимодействия

Команда                                | Значение
---------------------------------------|--------------------------
psql -h localhost -p 5432 -U postgres  | Подключиться к бд
\! chcp 1251                           | Сменить кодировку консоли из Shell ()
\x                                     | Каждый столбец на отдельной строке - переключатель режимов
\gx                                    | Тоже самое что и \x только вводится вместо ';' в конце оператора - действует для одного оператора
\l                                     | Список баз данных
\c <имя_базы данных>                   | Пдключиться к базе данных
\conninfo                              | Вывести информацию о соединение
\dn                                    | Список схем
set search_path=<имя_схемы>;           | Переключиться на схему
\d                                     | Список таблиц (отношений)
\i <путь_до_скрипта>                   | Выполнить SQL скрипт из файла
\q                                     | Выход

Пример пути: 


\i 'C:\\Projects\\notes\\Postgres\\test_db\\create.sql'

Из текущей директории
\i <имя_файла>

! Файл должен быть в кодировке 1251 и с расширением sql

* ps

## Настройки

* postgresql.conf — это основной конфигурационный файл, содержащий значения параметров сервера;

* pg_hba.conf — файл, определяющий настройки доступа. В целях безопасности по умолчанию доступ долже быть подтвержден паролем и допускается только с локального компьютера.

### Выполнить команду Shell \\!

## Выводить кирилицу

Из psql можно выполнять команды shell:

\! chcp 1251 | сменить кодировку консоли

## Терминальный пейджер

Терминальный пейджер more:
Q - выход
Enter - следующая строка
Пробел - на страницу вперед

Перейти с more на less
export PAGER="less"
export LESS="-iMSx4 -FX"
Помимо всего вышеперечисленного опция S отключает перенос длинных строк, что улучшает читабельность результата запроса.

## Форматирование вывода pset

Вызвать справку на команду - `\pset`

### Взаимодействие с ОС и выполнение скриптов

Все возможности форматирования результатов запросов доступны через команду \pset.

\a — с выравниванием/без выравнивания.

\t — переключатель отображения строки заголовка (хэдера таблицы) и итоговой строки (7 rows)

С помощью запроса SQL можно сформировать несколько других запросов SQL и записать их в файл, используя команду \o[ut]:

=> \pset fieldsep ''
Field separator is "".
=> \o dev1_psql.log

Вернем вывод на экран и восстановим форматирование по умолчанию.
=> \o \t \a

Выполним теперь эти команды из файла с помощью \i[nclude]:

## Динамические команды - Создать выполняемый SQL скрипт и запустить его

1. Создать файл-скрипт "1.sql"
2. Поместить туда строку: `select * from pg_shadow;`
3. В psql из директории со скриптом:
	1. `\ir 1.sql` или
	2. `\set ECHO all \ir 1.sql` - выводит все запросы и ответы бд

Команда | Комментарий
---     | ---
\a \t   | выкл выравнивание и заголовок таблицы
\o sql_skript.log | Перенаправить станлартный поток вывода в файл sql_skript.log
\pset fieldsep ' ' | Установить разделяющий колонки символ на пробел (' ')
`select 'select '''||tablename||': '', count(*) from ',tablename||';' from pg_tables limit 3;` | Запрос
\o |
\a \t |
\pset fieldsep '\|' |
\i[nclude] sql_skript.log | Запустить скрипт


```sql
\a \t
\pset fieldsep ''
\o dev1_psql.log

SELECT format('SELECT %L AS tbl, count(*) FROM %I;', tablename, tablename)
FROM pg_tables
LIMIT 3;

\! cat dev1_psql.log
\o \t \a


--- Впрочем, то же самое можно получить за один шаг, используя команду \gexec
SELECT format('SELECT %L AS tbl, count(*) FROM %I;', tablename, tablename)
FROM pg_tables LIMIT 3 \gexec
```

\gexec
Для выполнения SQL команд, который были сгенерированы SQL командой
https://dbtut.com/index.php/2019/02/03/postgresql-psql-gexec/

Другие способы выполнить команды из файла:

* \i dev1_psql.log
* \i 'C:\\Projects\\notes\\Postgres\\test_db\\create.sql'
* psql < имя_файла
* psql -f имя_файла
* psql -c 'команда' (работает только для одной команды)

### Переменные psql

Присвоение значения переменной top5 лучше записать в стартовый файл .psqlrc в домашнем каталоге пользователя. Команды из .psqlrc будут
автоматически выполняться каждый раз при старте psql.


> Соглашение по именованию переменных в PostgresSQL
>
> Все переменные пишутся в snake_case
> Встроенные переменные всегда пишутся заглавными буквами
> Пользовательские - мелкими буквами

Команда | Назначение команды
--- | ---
\set | вывести значение всех переменных (включая встроенные)
\? variables | справка по встроенным переменным


Команды из файла рассположенного в директории (часто используется для установки переменных)

1. $ pg_config --sysconfdir
вывести путь до места поиска файла с настройками ("C:\Apps\PostgresSQL\etc")

2. Создать там директорию etc

3. Поместить туда файл с именем "psql"  ( подробнее: C:\Apps\PostgresSQL\share\psqlrc.sample)

4.  Добавить туда строчки:
\set PROMPT1 '%M:%> %n@%/%R%#%x '
! chcp 1251

Первая строчка в пункте 4 форматирует переменную PROMPT1, которая задает приглашение для пользователя
Пример:
localhost:5432 postgres@db_insurance_ref=#

```psql
\set TEST Hi!

\echo :TEST 
output: Hi! 

\unset TEST

\echo :TEST 
output: :TEST
```

## copy

Сохраняю содержимое таблицы в файл customers.dump:

db1# `\copy customers to 'customers.dump'`

Загружаю содержимое файла в другую таблицу:


db2# `\copy temp_customers from 'customers.dump'`

> Важно, чтобы таблицы, которые участвуют в переносе, имели одинаковую структуру

# Тема 02 

[«Общее устройство PostgreSQL». Учебный курс DEV1 в Твери 2018](https://www.youtube.com/watch?v=CLs-QgKKoqQ&list=PLaFqU3KCWw6LNR1IZ814whJe89J1tRQ3t&index=3&ab_channel=PostgresProfessional)

![Архитектура Клиент-Сервер](./images/character_01_Клиент_Сервер.svg)

Клиент | PostgresSQL
---    + ---
подключение | аутентификация
формирование запросов | выполнение запросов
управление транзакциями | поддержка транзакционности

Протокол Postgres-а

Драйвера | Описание
--- + ---
библиотека libq | 
jdbs | 

Поддержка транзакционности (согласованности)
   
   Начиная с 11 версией процедуры ядра СУБД могут управлять транзакциями, до этого было только управление транзакциями на стороне клиента

Принципы ACID | Описание
---           + ---
атомарность | всё или ничего
**согласованность** | ограничения целостности и пользовательские ограничения
изоляция | отсутствие влияния параллельных процессов
долговечность | сохранность данных при сбоях


Транзакция

```sql
BEGIN;

INSERT INTO groups(g_no, monitor)
SELECT 'A-101', s_id
FROM students
WHERE name = 'Анна';

UPDATE students SET g_no = 'A-101';

COMMIT; -- зафиксировать изменения
-- ROLLBACK; -- отменить изменения в транзакции
```

Свойства транзакций:
	
1. атомарностью

	Любая транзакция либо выполняется целиком, либо не выполняется совсем.
	Если бы в одной из команд произошла ошибка, или мы сами прервали бы транзакцию командой ROLLBACK, то база данных осталась бы в том состоянии, в котором она была до команды BEGIN.

2. согласованность
	
	когда фиксируются изменения транзакции, все ограничения целостности должны быть выполнены, иначе транзакция прерывается. В начале работы транзакции данные находятся в согласованном состоянии, и в конце своей работы транзакция оставляет их согласованными.

3. изоляция
	
	другие пользователи никогда не увидят несогласованные данные, которые
	транзакция еще не зафиксировала. 

Особенностью PostgreSQL является очень
эффективная реализация изоляции: несколько сеансов могут одновременно читать и изменять данные, не блокируя
друг друга. Блокировка возникает только при одновременном изменении одной и той же строки двумя разными процессами.

4. долговечность

	зафиксированные данные не пропадут даже в случае сбоя (конечно,
	при правильных настройках и регулярном выполнении резервного копирования).


**Клиент ---запрос---> СУБД PostgresSQL**

Этап на стороне сервера    | Описание | Где хранится информация
---                        + ---
Разбор | Синтаксический анализ, проверка существования объектов бд (таблиц и атрибутов), проверка прав доступа | Информация об объектах базы данных храниться внутри [**системного каталога**](#system_directory)
Трансформация | Правила (пример: имя представления разворачивается в запрос к реальным таблицам) | 
Планирование | Статистика | В оптимизаторе запросов, статистика - информация из системного каталога об размере таблиц, как распределены данные внутри столбцов таблицы
Выполнение | Данные | 



**Клиент <---результат--- СУБД PostgresSQL**

Как увидеть план запроса?

explain select ... - план запроса

explain analize select ... - план и фактические значения выполнения запроса


## Курсоры

Возможность работать с результатом запроса построчно. На экранную форму выводится 10 строчек - команда на получение порции данных. 

## Процессы Postgres

На каждого клиента создается отдельный обслуживающий процесс, со своей локальной памяться. Процессы создает главный процесс `postmaster` (название в диспечере задач Postgres). Postmaster управляет обслуживающими процессами и фоновыми процессами. Все процессы взаимодействуют с общей памятью. Блокировки общей памяти => очередь процессоров. У таблиц многоверсионность => меньше блокировок. 

Пул соединений - клиенты взаимодействуют с менеджером пулов, пул перенаправляет в одно из откытых соединений. Много информации храниться в локальной памяти процесса - теряется некоторая возможность использования подготовленных операторов.

Пул соединений вне Postgres - pg_Bouncer или в сервер приложений встроенный 


Postgres - вызывает методы операционной системы для чтения файлов. Двойное кэширование данных - в ОС и внутри Postgres 

Если отключится питание, потеряется содержимое оперативной