# О курсе

<!-- MarkdownTOC autolink="true" levels="1,2,3,4,5,6" bracket="round" style="unordered" indent=" " autoanchor="true" markdown_preview="github" uri_encoding="true" -->

- [Какие навыки будут получены?](#%25D0%25BA%25D0%25B0%25D0%25BA%25D0%25B8%25D0%25B5-%25D0%25BD%25D0%25B0%25D0%25B2%25D1%258B%25D0%25BA%25D0%25B8-%25D0%25B1%25D1%2583%25D0%25B4%25D1%2583%25D1%2582-%25D0%25BF%25D0%25BE%25D0%25BB%25D1%2583%25D1%2587%25D0%25B5%25D0%25BD%25D1%258B)
- [Материалы курса](#%25D0%25BC%25D0%25B0%25D1%2582%25D0%25B5%25D1%2580%25D0%25B8%25D0%25B0%25D0%25BB%25D1%258B-%25D0%25BA%25D1%2583%25D1%2580%25D1%2581%25D0%25B0)
 - [Скачать материалы курса](#%25D1%2581%25D0%25BA%25D0%25B0%25D1%2587%25D0%25B0%25D1%2582%25D1%258C-%25D0%25BC%25D0%25B0%25D1%2582%25D0%25B5%25D1%2580%25D0%25B8%25D0%25B0%25D0%25BB%25D1%258B-%25D0%25BA%25D1%2583%25D1%2580%25D1%2581%25D0%25B0)
 - [Скачать PostgeSQL](#%25D1%2581%25D0%25BA%25D0%25B0%25D1%2587%25D0%25B0%25D1%2582%25D1%258C-postgesql)
 - [Поддержка кириллицы](#%25D0%25BF%25D0%25BE%25D0%25B4%25D0%25B4%25D0%25B5%25D1%2580%25D0%25B6%25D0%25BA%25D0%25B0-%25D0%25BA%25D0%25B8%25D1%2580%25D0%25B8%25D0%25BB%25D0%25BB%25D0%25B8%25D1%2586%25D1%258B)
 - [Утилита psql](#%25D1%2583%25D1%2582%25D0%25B8%25D0%25BB%25D0%25B8%25D1%2582%25D0%25B0-psql)
 - [Выполнение команд в среде XUbuntu](#%25D0%25B2%25D1%258B%25D0%25BF%25D0%25BE%25D0%25BB%25D0%25BD%25D0%25B5%25D0%25BD%25D0%25B8%25D0%25B5-%25D0%25BA%25D0%25BE%25D0%25BC%25D0%25B0%25D0%25BD%25D0%25B4-%25D0%25B2-%25D1%2581%25D1%2580%25D0%25B5%25D0%25B4%25D0%25B5-xubuntu)
  - [Пример использования на XUbuntu](#%25D0%25BF%25D1%2580%25D0%25B8%25D0%25BC%25D0%25B5%25D1%2580-%25D0%25B8%25D1%2581%25D0%25BF%25D0%25BE%25D0%25BB%25D1%258C%25D0%25B7%25D0%25BE%25D0%25B2%25D0%25B0%25D0%25BD%25D0%25B8%25D1%258F-%25D0%25BD%25D0%25B0-xubuntu)
 - [При ошибках в курсе](#%25D0%25BF%25D1%2580%25D0%25B8-%25D0%25BE%25D1%2588%25D0%25B8%25D0%25B1%25D0%25BA%25D0%25B0%25D1%2585-%25D0%25B2-%25D0%25BA%25D1%2583%25D1%2580%25D1%2581%25D0%25B5)
 - [Расширения](#%25D1%2580%25D0%25B0%25D1%2581%25D1%2588%25D0%25B8%25D1%2580%25D0%25B5%25D0%25BD%25D0%25B8%25D1%258F)
 - [Администрирование сервера](#%25D0%25B0%25D0%25B4%25D0%25BC%25D0%25B8%25D0%25BD%25D0%25B8%25D1%2581%25D1%2582%25D1%2580%25D0%25B8%25D1%2580%25D0%25BE%25D0%25B2%25D0%25B0%25D0%25BD%25D0%25B8%25D0%25B5-%25D1%2581%25D0%25B5%25D1%2580%25D0%25B2%25D0%25B5%25D1%2580%25D0%25B0)
  - [Утилиа для управления сервером - pg_ctl](#%25D1%2583%25D1%2582%25D0%25B8%25D0%25BB%25D0%25B8%25D0%25B0-%25D0%25B4%25D0%25BB%25D1%258F-%25D1%2583%25D0%25BF%25D1%2580%25D0%25B0%25D0%25B2%25D0%25BB%25D0%25B5%25D0%25BD%25D0%25B8%25D1%258F-%25D1%2581%25D0%25B5%25D1%2580%25D0%25B2%25D0%25B5%25D1%2580%25D0%25BE%25D0%25BC---pg_ctl)
  - [Журнал сервера](#%25D0%25B6%25D1%2583%25D1%2580%25D0%25BD%25D0%25B0%25D0%25BB-%25D1%2581%25D0%25B5%25D1%2580%25D0%25B2%25D0%25B5%25D1%2580%25D0%25B0)
 - [Конфигурационные файлы](#%25D0%25BA%25D0%25BE%25D0%25BD%25D1%2584%25D0%25B8%25D0%25B3%25D1%2583%25D1%2580%25D0%25B0%25D1%2586%25D0%25B8%25D0%25BE%25D0%25BD%25D0%25BD%25D1%258B%25D0%25B5-%25D1%2584%25D0%25B0%25D0%25B9%25D0%25BB%25D1%258B)
  - [Список конфигурационных файлов](#%25D1%2581%25D0%25BF%25D0%25B8%25D1%2581%25D0%25BE%25D0%25BA-%25D0%25BA%25D0%25BE%25D0%25BD%25D1%2584%25D0%25B8%25D0%25B3%25D1%2583%25D1%2580%25D0%25B0%25D1%2586%25D0%25B8%25D0%25BE%25D0%25BD%25D0%25BD%25D1%258B%25D1%2585-%25D1%2584%25D0%25B0%25D0%25B9%25D0%25BB%25D0%25BE%25D0%25B2)
 - [Найстройка файла инициализации psql](#%25D0%25BD%25D0%25B0%25D0%25B9%25D1%2581%25D1%2582%25D1%2580%25D0%25BE%25D0%25B9%25D0%25BA%25D0%25B0-%25D1%2584%25D0%25B0%25D0%25B9%25D0%25BB%25D0%25B0-%25D0%25B8%25D0%25BD%25D0%25B8%25D1%2586%25D0%25B8%25D0%25B0%25D0%25BB%25D0%25B8%25D0%25B7%25D0%25B0%25D1%2586%25D0%25B8%25D0%25B8-psql)
  - [Журнал сервера](#%25D0%25B6%25D1%2583%25D1%2580%25D0%25BD%25D0%25B0%25D0%25BB-%25D1%2581%25D0%25B5%25D1%2580%25D0%25B2%25D0%25B5%25D1%2580%25D0%25B0-1)
  - [Ссылки на доп информацию](#%25D1%2581%25D1%2581%25D1%258B%25D0%25BB%25D0%25BA%25D0%25B8-%25D0%25BD%25D0%25B0-%25D0%25B4%25D0%25BE%25D0%25BF-%25D0%25B8%25D0%25BD%25D1%2584%25D0%25BE%25D1%2580%25D0%25BC%25D0%25B0%25D1%2586%25D0%25B8%25D1%258E)
 - [Ключевые параметры](#%25D0%25BA%25D0%25BB%25D1%258E%25D1%2587%25D0%25B5%25D0%25B2%25D1%258B%25D0%25B5-%25D0%25BF%25D0%25B0%25D1%2580%25D0%25B0%25D0%25BC%25D0%25B5%25D1%2582%25D1%2580%25D1%258B)

<!-- /MarkdownTOC -->


<a id="%25D0%25BA%25D0%25B0%25D0%25BA%25D0%25B8%25D0%25B5-%25D0%25BD%25D0%25B0%25D0%25B2%25D1%258B%25D0%25BA%25D0%25B8-%25D0%25B1%25D1%2583%25D0%25B4%25D1%2583%25D1%2582-%25D0%25BF%25D0%25BE%25D0%25BB%25D1%2583%25D1%2587%25D0%25B5%25D0%25BD%25D1%258B"></a>

## [Материалы курса](#%25D0%25BA%25D0%25B0%25D0%25BA%25D0%25B8%25D0%25B5-%25D0%25BD%25D0%25B0%25D0%25B2%25D1%258B%25D0%25BA%25D0%25B8-%25D0%25B1%25D1%2583%25D0%25B4%25D1%2583%25D1%2582-%25D0%25BF%25D0%25BE%25D0%25BB%25D1%2583%25D1%2587%25D0%25B5%25D0%25BD%25D1%258B)   Какие навыки будут получены? 

* общие сведения об архитектуре PostgreSQL
* использование основных объектов БД: таблиц, индексов, представленийпрограммирование на стороне сервера на языках `SQL` и `PL/pgSQL`
* использование основных типов данных, включая записи и массивыорганизация взаимодействия с клиентской частью приложения

<a id="%25D0%25BC%25D0%25B0%25D1%2582%25D0%25B5%25D1%2580%25D0%25B8%25D0%25B0%25D0%25BB%25D1%258B-%25D0%25BA%25D1%2583%25D1%2580%25D1%2581%25D0%25B0"></a>
## Материалы курса

<a id="%25D1%2581%25D0%25BA%25D0%25B0%25D1%2587%25D0%25B0%25D1%2582%25D1%258C-%25D0%25BC%25D0%25B0%25D1%2582%25D0%25B5%25D1%2580%25D0%25B8%25D0%25B0%25D0%25BB%25D1%258B-%25D0%25BA%25D1%2583%25D1%2580%25D1%2581%25D0%25B0"></a>
### Скачать материалы курса

```bash
wget https://edu.postgrespro.ru/DEV1-handouts-12.zip 
unzip -d dev1 DEV1-handouts-12.zip
rm DEV1-handouts-12.zip
```

* основные функции и типы данных (`datatypes.pdf`);
* схема основных таблиц системного каталога с командами psql (`catalogs.pdf`);
* основные команды Unix(`unix_commands.pdf`)

<a id="%25D1%2581%25D0%25BA%25D0%25B0%25D1%2587%25D0%25B0%25D1%2582%25D1%258C-postgesql"></a>
### Скачать PostgeSQL

[Скачать PostgeSQL](https://www.postgresql.org/download/)

Под Ubuntu установщик сразу:
1. инициализирует кластер $PGDATA = `/var/lib/postgresql/12/main` (тут же postgresql.auto.conf)
2. прописывает запуск Postgres туда, откуда запускается система

<a id="%25D0%25BF%25D0%25BE%25D0%25B4%25D0%25B4%25D0%25B5%25D1%2580%25D0%25B6%25D0%25BA%25D0%25B0-%25D0%25BA%25D0%25B8%25D1%2580%25D0%25B8%25D0%25BB%25D0%25BB%25D0%25B8%25D1%2586%25D1%258B"></a>
### Поддержка кириллицы
При запуске psql рекомендуем выполнять команду chcp 1251, которая настраивает правильное отображение русского языка.

$ `\! chcp 1251`

При запуске pgbench рекомендуем выполнять команду chcp 65001, которая настраивает правильное отображение русского языка.
Предупреждение: не следует запускать psql после команды chcp 65001, в противном случае 8-битовые (русские) символы могут отображаться некорректно.

<a id="%25D1%2583%25D1%2582%25D0%25B8%25D0%25BB%25D0%25B8%25D1%2582%25D0%25B0-psql"></a>
### Утилита psql 

SQL Shell (psql) — основное, «родное» консольное средство управления сервером и выполнения запросов.

psql — интерактивный терминал PostgreSQL

[Подробнее об psql](https://postgrespro.ru/docs/postgresql/12/app-psql)

psql -d база -U роль -h узел -p порт(по умолчанию 5432)

<a id="%25D0%25B2%25D1%258B%25D0%25BF%25D0%25BE%25D0%25BB%25D0%25BD%25D0%25B5%25D0%25BD%25D0%25B8%25D0%25B5-%25D0%25BA%25D0%25BE%25D0%25BC%25D0%25B0%25D0%25BD%25D0%25B4-%25D0%25B2-%25D1%2581%25D1%2580%25D0%25B5%25D0%25B4%25D0%25B5-xubuntu"></a>
### Выполнение команд в среде XUbuntu

Чтобы выполнить команду от имени другого пользователя (например, postgres), выполните:

$`sudo -u postgres команда`

Но обычно бывает удобно открыть второй терминал, один раз выполнить

$`sudo su postgres`

<a id="%25D0%25BF%25D1%2580%25D0%25B8%25D0%25BC%25D0%25B5%25D1%2580-%25D0%25B8%25D1%2581%25D0%25BF%25D0%25BE%25D0%25BB%25D1%258C%25D0%25B7%25D0%25BE%25D0%25B2%25D0%25B0%25D0%25BD%25D0%25B8%25D1%258F-%25D0%25BD%25D0%25B0-xubuntu"></a>
#### Пример использования на XUbuntu

```bash
// Команда su - это традиционный способ получения привилегий root в Linux
student:~$ sudo su postgres

// Изменить значение параметра work_mem - задает объем памяти, который будет использоваться для внутренних операций сортировки и хеш-таблиц, прежде чем будут задействованы временные файлы на диске (по умолчанию '4MB')
ALTER SYSTEM SET work_mem TO '16MB'; 
// или для сеанса SET work_mem = '64MB'; // Новое значение действует только в текущем сеансе или в текущей транзакции (при указании SET LOCAL)
// SET LOCAL work_mem = '64MB'; // на транзакцию

// Восстановить значение параметра work_mem (по умолчанию '4MB')
ALTER SYSTEM RESET work_mem;

// Проверить файл конфигураций с высшим приоритетом
postgres@student:/home/student$ cat /var/lib/postgresql/12/main/postgresql.auto.conf
# Do not edit this file manually!
# It will be overwritten by the ALTER SYSTEM command.
work_mem = '16MB'

postgres@student:/home/student$ pg_ctlcluster 12 main reload 
// или SELECT pg_reload_conf(); // выполнятся в утилите psql

// Войти в утилиту psql
postgres@student:/home/student$ psql
psql (12.5 (Ubuntu 12.5-1.pgdg20.04+1))
Type "help" for help.

// Выводить кирилицу
\! chcp 1251

// Вывести значение параметра work_mem
postgres=# SHOW work_mem; 
// или SELECT current_setting('work_mem');
// или SELECT name, setting, unit FROM pg_settings WHERE name = 'work_mem';
 work_mem 
----------
 16MB
(1 row)

// Выйти из утилиты psql
postgres=# \q
```

<a id="%25D0%25BF%25D1%2580%25D0%25B8-%25D0%25BE%25D1%2588%25D0%25B8%25D0%25B1%25D0%25BA%25D0%25B0%25D1%2585-%25D0%25B2-%25D0%25BA%25D1%2583%25D1%2580%25D1%2581%25D0%25B5"></a>
### При ошибках в курсе 

Будем рады, если вы поделитесь с нами своими замечаниями по адресу 

[edu@postgrespro.ru](edu@postgrespro.ru)

<a id="%25D1%2580%25D0%25B0%25D1%2581%25D1%2588%25D0%25B8%25D1%2580%25D0%25B5%25D0%25BD%25D0%25B8%25D1%258F"></a>
### Расширения 

В состав дистрибутива PostgreSQL входит примерно 50 различных расширений.
Их описание включено в документацию:

[Расширения список](https://postgrespro.ru/docs/postgresql/12/contrib-progСписок) 

[Расширения документация](https://postgrespro.ru/docs/postgresql/12/contrib)

доступных расширений и статус их установки можно посмотреть в представлении `pg_available_extensions`.

<a id="%25D0%25B0%25D0%25B4%25D0%25BC%25D0%25B8%25D0%25BD%25D0%25B8%25D1%2581%25D1%2582%25D1%2580%25D0%25B8%25D1%2580%25D0%25BE%25D0%25B2%25D0%25B0%25D0%25BD%25D0%25B8%25D0%25B5-%25D1%2581%25D0%25B5%25D1%2580%25D0%25B2%25D0%25B5%25D1%2580%25D0%25B0"></a>
### Администрирование сервера

<a id="%25D1%2583%25D1%2582%25D0%25B8%25D0%25BB%25D0%25B8%25D0%25B0-%25D0%25B4%25D0%25BB%25D1%258F-%25D1%2583%25D0%25BF%25D1%2580%25D0%25B0%25D0%25B2%25D0%25BB%25D0%25B5%25D0%25BD%25D0%25B8%25D1%258F-%25D1%2581%25D0%25B5%25D1%2580%25D0%25B2%25D0%25B5%25D1%2580%25D0%25BE%25D0%25BC---pg_ctl"></a>
#### Утилиа для управления сервером - pg_ctl

утилита pg_ctl (ctl - controll) доступ через специальную обертку `pg_ctlcluster` (для Ubuntu)

pg_ctlcluster <версия PostgresSQL> main <команда>

**Остановить сервер:**
postgres$ `pg_ctlcluster 12 main stop`

**Запустить сервер:**
postgres$ `pg_ctlcluster 12 main start`

**Перезапустить:**
postgres$ `pg_ctlcluster 12 main restart`

**Обновить конфигурацию:**
postgres$ `pg_ctlcluster 12 main reload`

<a id="%25D0%25B6%25D1%2583%25D1%2580%25D0%25BD%25D0%25B0%25D0%25BB-%25D1%2581%25D0%25B5%25D1%2580%25D0%25B2%25D0%25B5%25D1%2580%25D0%25B0"></a>
#### Журнал сервера

1. Служебные сообщения сервера
2. Сообщения пользовательских сеансов
3. Сообщения приложений

Настройка журнала:

1. Расположение: /var/log/postgresql/postgresql-12-main.log
2. Формат записей | текстовый | csv
3. Какие события регестрировать | Unix - syslog | Windows - eventlog

[Логирование](https://postgrespro.ru/docs/postgresql/12/runtime-config-logging)

<a id="%25D0%25BA%25D0%25BE%25D0%25BD%25D1%2584%25D0%25B8%25D0%25B3%25D1%2583%25D1%2580%25D0%25B0%25D1%2586%25D0%25B8%25D0%25BE%25D0%25BD%25D0%25BD%25D1%258B%25D0%25B5-%25D1%2584%25D0%25B0%25D0%25B9%25D0%25BB%25D1%258B"></a>
### Конфигурационные файлы

Установка параметрово во время выполнения: 
1. SET/RESET | set_config()

Просмотр | SHOW | current_settings()

<a id="%25D1%2581%25D0%25BF%25D0%25B8%25D1%2581%25D0%25BE%25D0%25BA-%25D0%25BA%25D0%25BE%25D0%25BD%25D1%2584%25D0%25B8%25D0%25B3%25D1%2583%25D1%2580%25D0%25B0%25D1%2586%25D0%25B8%25D0%25BE%25D0%25BD%25D0%25BD%25D1%258B%25D1%2585-%25D1%2584%25D0%25B0%25D0%25B9%25D0%25BB%25D0%25BE%25D0%25B2"></a>
#### Список конфигурационных файлов

Чтобы изменить значение конфигурационного параметра,
откройте файл postgresql.conf и либо найдите в нем нужный параметр и исправьте его значение, либо добавьте
новую строку в конец файла — она будет иметь приоритет над значением, которое устанавливалось выше в том
же файле.

Имя файла | Путь к файлу            | Способ изменения файла | Описание
----------|-------------------------|-----------------------------
postgresql.conf | /etc/postgresql/12/main/postgresql.conf | Вручную | основной файл параметров 
postgresql.auto.conf | /var/lib/postgresql/12/main/postgresql.auto.conf | команда ALTER SYSTEM | основной файл параметров (с высшим приоритетом, т.е. Параметры, установленные через команду `ALTER SYSTEM`, имеют приоритет над параметрами в postgresql.conf.
pg_hba.conf | /var/lib/postgresql/12/main/ | Настройка аутентификация удаленных (не локальных) пользователей
postgresql-12-main.log | /var/log/postgresql/ | Журнал сервера

Имя 			| Путь в Windows | Описание
----------------|------------------------------------ 
postgresql.conf | C:\Apps\PostgresSQL\data 
postgresql.auto.conf | C:\Apps\PostgresSQL\data
pg_hba.conf | C:\Apps\PostgresSQL\data
psqlrc | C:\Apps\PostgresSQL\etc | Файл выполняющийся каждый раз после запуска psql (! Требуется создать вручную)
psqlrc.sample            | C:\Apps\PostgresSQL\share  | Файл с предварительными настройками psql


<a id="%25D0%25BD%25D0%25B0%25D0%25B9%25D1%2581%25D1%2582%25D1%2580%25D0%25BE%25D0%25B9%25D0%25BA%25D0%25B0-%25D1%2584%25D0%25B0%25D0%25B9%25D0%25BB%25D0%25B0-%25D0%25B8%25D0%25BD%25D0%25B8%25D1%2586%25D0%25B8%25D0%25B0%25D0%25BB%25D0%25B8%25D0%25B7%25D0%25B0%25D1%2586%25D0%25B8%25D0%25B8-psql"></a>
### Найстройка файла инициализации psql

1. Открыть файл C:\Apps\PostgresSQL\share\psqlrc.sample
2. Выполнить команду $ pg_config --sysconfdir, чтобы узнать требуемое расположение файла psqlrc
3. Скопировать файл psqlrc.sample на рабочий стол и переименовать его в psqlrc
4. Дописать в файл psqlrc:
		
		\set PROMPT1 '%M:%> %n@%/%R%#%x '
		\! chcp 1251

5. Переместить файл по пути из команды в пункте 2 (Пример: C:\Apps\PostgresSQL\etc), при необходимости создать папку etc

<a id="%25D0%25B6%25D1%2583%25D1%2580%25D0%25BD%25D0%25B0%25D0%25BB-%25D1%2581%25D0%25B5%25D1%2580%25D0%25B2%25D0%25B5%25D1%2580%25D0%25B0-1"></a>
#### Журнал сервера

Вывести 10 последних строчек файла журнала сервера
$ tail -n 10 /var/log/postgresql/postgresql-12-main.log

```txt
...
2020-03-26 11:27:22.256 MSK [826] LOG: received SIGHUP, reloading configuration files
```
Дата-время [PID-процесса]: <Сообщение>

<a id="%25D1%2581%25D1%2581%25D1%258B%25D0%25BB%25D0%25BA%25D0%25B8-%25D0%25BD%25D0%25B0-%25D0%25B4%25D0%25BE%25D0%25BF-%25D0%25B8%25D0%25BD%25D1%2584%25D0%25BE%25D1%2580%25D0%25BC%25D0%25B0%25D1%2586%25D0%25B8%25D1%258E"></a>
#### Ссылки на доп информацию

[Варианты установки и управления параметрами](https://postgrespro.ru/docs/postgresql/12/config-setting)

[Текущие значения доступны в представлении pg_settings](https://postgrespro.ru/docs/postgresql/12/view-pg-settings)

<a id="%25D0%25BA%25D0%25BB%25D1%258E%25D1%2587%25D0%25B5%25D0%25B2%25D1%258B%25D0%25B5-%25D0%25BF%25D0%25B0%25D1%2580%25D0%25B0%25D0%25BC%25D0%25B5%25D1%2582%25D1%2580%25D1%258B"></a>
### Ключевые параметры 

Имя параметра | Описание 
--------------|-------------------------------------------------------
work_mem      | задает объем памяти, который будет использоваться для внутренних операций сортировки и хеш-таблиц, прежде чем будут задействованы временные файлы на диске.
shared_buffers | размер буферного кэша,
который используется для того, чтобы работа с наиболее
часто используемыми данными происходила в оперативной памяти и не требовала избыточных обращений к диску.
Настройку можно начинать с 25 % от общего объема ОЗУ
сервера. Изменение этого параметра вступает в силу только после перезагрузки сервера!
 effective_cache_size | не влияет на выделение памяти, но подсказывает PostgreSQL, на какой общий размер кэша рассчитывать, включая кэш операционной системы. Чем выше это значение, тем большее предпочтение отдается индексам. Начать можно с 50–75 % от объема ОЗУ.
maintenance_work_mem | определяет размер памяти, выделяемый служебным процессам. Его увеличение может ускорить построение индексов, работу процесса очистки (vacuum). Обычно устанавливается значение, в несколько раз превышающее значения work_mem.


Например, при ОЗУ 32 ГБ можно начать с настройки:
shared_buffers = '8GB'
effective_cache_size = '24GB'
work_mem = '128MB'
maintenance_work_mem = '512MB'


Пример: 

`ALTER SYSTEM SET work_mem TO '16MB';`

- [Какие навыки будут получены?](#%25D0%25BA%25D0%25B0%25D0%25BA%25D0%25B8%25D0%25B5-%25D0%25BD%25D0%25B0%25D0%25B2%25D1%258B%25D0%25BA%25D0%25B8-%25D0%25B1%25D1%2583%25D0%25B4%25D1%2583%25D1%2582-%25D0%25BF%25D0%25BE%25D0%25BB%25D1%2583%25D1%2587%25D0%25B5%25D0%25BD%25D1%258B)