# Pattern Matching 

[Pattern Matching - Поиск по шаблону](https://postgrespro.ru/docs/postgrespro/12/functions-matching)

<!-- MarkdownTOC -->

- LIKE
- ILIKE \(PostgresPro\)
- SIMILAR TO Regular Expressions
- substring
	- substring with three arguments
	- substring with two arguments
- regexp_replace
	- Table flags
- regexp_match and regexp_matches
	- regexp_match \(Postgres Pro\)
	- regexp_matches
- POSIX Regular Expressions
- НСИ

<!-- /MarkdownTOC -->


## LIKE

LIKE - Поиск текста по шаблону

```sql
строка LIKE шаблон [ESCAPE спецсимвол]
строка NOT LIKE шаблон [ESCAPE спецсимвол]
```

Спецсимвол   | Назначение
:-----------:|----------------------
%            | Означает любую последовательность символов (в том числе пустую)
_            | Означает один любой символ
\            | Спецсимвол для экранирования символов '%' и '_' в строке (Можно заменить: ESCAPE '$')

```sql
SELECT 'abc' LIKE 'abc'; -- true
SELECT 'abc' LIKE 'ADC'; -- false
SELECT 'abc' ILIKE 'ADC'; -- false
SELECT 'abc' LIKE 'a%'; -- true
SELECT 'abc' LIKE '_b_'; -- true
SELECT 'abc' LIKE 'c'; -- false
SELECT 'abc' LIKE '___'; -- true
```

```sql
SELECT '_asdfa' LIKE '\_asd%'; -- true
-- или для экранирования символа '_' можно использовать произвольный символ указанный после слова ESCAPE, например символ '$'
SELECT '_asdfa' LIKE '$_asd%' ESCAPE '$'; -- true
```

## ILIKE (PostgresPro)

ILIKE - Регистро-независимый поиск по шаблону с учётом текущей языковой среды

Оператор в PostgresPro | Описание
-----------------------|----------------------
~~                     | LIKE
~~*                    | ILIKE
!~~                    | OT LIKE
!~~*                   | NOT ILIKE
^@                     | оператор проверки префикса (или воспользоваться функцией starts_with())

```sql
SELECT 'abc' ILIKE 'ABC'; -- true
SELECT 'abc' ILIKE '_B_'; -- true
```

## SIMILAR TO Regular Expressions

SIMILAR TO - шаблоны соответствуют определению регулярных выражений в стандарте SQL

Шаблон по определению в SQL должен соответствовать всей строке, а не только ее части, как в JAVA

```sql
строка SIMILAR TO шаблон [ESCAPE спецсимвол]
строка NOT SIMILAR TO шаблон [ESCAPE спецсимвол]
```

Спецсимвол | Назначение
-----------|-----------------------------------------------------------
\|         | Означает выбор (одного из двух вариантов)
*          | Означает повторение предыдущего элемента 0 и более раз
+          | Означает повторение предыдущего элемента 1 и более раз
?          | Означает вхождение предыдущего элемента 0 или 1 раз
{m}        | Означает повторяет предыдущего элемента ровно m раз
{m,}       | Означает повторение предыдущего элемента m или более раз
{m,n}      | Oзначает повторение предыдущего элемента не менее чем m и не более чем n раз
()         | Объединяют несколько элементов в одну логическую группу
[]         | Обозначают класс символов так же, как и в регулярных выражениях POSIX
\          | Спецсимвол для экранирования символов '%' и '_' в строке (Можно заменить: ESCAPE '$') 

```sql
SELECT 'abc' SIMILAR TO 'abc'; -- true
SELECT 'abc' SIMILAR TO 'a'; -- false
SELECT 'abc' SIMILAR TO '%(b|d)%'; -- true
'abc' SIMILAR TO '(b|c)%'   false
```

## substring 

Функция substring с тремя параметрами производит извлечение подстроки, соответствующей шаблону регулярного выражения SQL.

Указанному шаблону должна соответствовать вся строка; в противном случае функция не найдёт ничего и вернёт NULL

```sql
-- Использует LIKE спецсимволы
substring(строка from шаблон for спецсимвол)
-- <=>
substring(строка, шаблон, спецсимвол)

-- С двумя аргументами поведение функции отличается - используются POSIX спецсимволы
substring(строка from шаблон)
-- <->
substring(строка, шаблон)
```

### substring with three arguments

Строка результата выполнения функции соответствует строке шаблона между разделителями `#"` (спецсимвол + ") в шаблоне, при условии, что строка соответствует шаблону, иначе NULL

```sql
SELECT substring('foobar' from '%#"o_b#"%' for '#'); -- oob
SELECT substring('foobar' from '#"o_b#"%' for '#'); -- NULL

-- НСИ
SELECT substring('$.extFields[*].id', '%extFields%.#"%#"', '#'); -- id
```

### substring with two arguments 

Eсли шаблон содержит скобки, она возвращает первое подвыражение, заключённое в скобки

```sql
SELECT substring('test', 'te(.)t'); -- s
SELECT substring('testPrivet', 'te(.*)vet'); -- stPri
```
## regexp_replace

Функция regexp_replace подставляет другой текст вместо подстрок, соответствующих шаблонам регулярных выражений POSIX.

Если соответствие `шаблону` в `исходной_строке` находится, возвращается `исходная_строка`, в которой вместо соответствующего фрагмента подставляется `замена`.

Если же `исходная_строка` не содержит фрагмента, подходящего под `шаблон`, она возвращается неизменной

```sql
regexp_replace(исходная_строка, шаблон, замена [, флаги]);
```

```sql
SELECT regexp_replace('foobarbaz', 'b..', 'X'); -- fooXbaz
SELECT regexp_replace('foobarbaz', 'b..', 'X', 'g'); -- fooXX
SELECT regexp_replace('foobarbaz', 'b(..)', 'X\1Y', 'g'); -- fooXarYXazY

-- НСИ
SELECT regexp_replace('$.extFields[*].id', '\*', '5'); -- $.extFields[5].id
```

Строка замена может содержать \n, где n — число от 1 до 9, указывающее на исходный фрагмент, соответствующий n-ому подвыражению в скобках, и может содержать обозначение \&, указывающее, что будет вставлен фрагмент, соответствующий всему шаблону. Если же в текст замены нужно включить обратную косую черту буквально, следует написать \\.

### Table flags

Параметр	| Описание
------------|----------------------------------
g   | указывает, что заменяться должны все подходящие подстроки, а не только первая из них
b	| продолжение регулярного выражения — BRE
c	| поиск соответствий с учётом регистра (переопределяет тип оператора)
e	| продолжение RE — ERE
i	| поиск соответствий без учёта регистра (см. Подраздел 9.7.3.5) (переопределяет тип оператора)
m	| исторически сложившийся синоним n
n	| поиск соответствий с учётом перевода строк (см. Подраздел 9.7.3.5)
p	| переводы строк учитываются частично (см. Подраздел 9.7.3.5)
q	| продолжение регулярного выражения — обычная строка («в кавычках»), содержимое которой воспринимается буквально
s	| поиск соответствий без учёта перевода строк (по умолчанию)
t	| компактный синтаксис (по умолчанию; см. ниже)
w	| переводы строк учитываются частично, но в другом, «странном» режиме (см. Подраздел 9.7.3.5)
x	| развёрнутый синтаксис (см. ниже)

## regexp_match and regexp_matches 

### regexp_match (Postgres Pro)

regexp_match() существует только в Postgres Pro версии 10 и выше

Возвращает текстовый массив из всех подходящих подстрок, полученных из первого вхождения шаблона регулярного выражения POSIX в строке.

Если вхождение не находится, результатом будет NULL.

Если вхождение находится и шаблон не содержит подвыражений в скобках, результатом будет текстовый массив с одним элементом, содержащим подстроку, соответствующую всему шаблону.

Если вхождение находится и шаблон содержит подвыражения в скобках, результатом будет текстовый массив, в котором n-ым элементом будет n-ое заключённое в скобки подвыражение шаблона (не считая «незахватывающих» скобок; подробнее см. ниже). 

В параметре флаги передаётся необязательная текстовая строка, содержащая ноль или более однобуквенных флагов, меняющих поведение функции (кроме флага g).

```sql
text[] regexp_match(строка text, шаблон text [, флаги text]);
```
```sql
SELECT regexp_match('foobarbequebaz', 'bar.*que'); -- {barbeque}
SELECT regexp_match('foobarbequebaz', '(bar)(beque)'); -- {bar,beque}
SELECT (regexp_match('foobarbequebaz', 'bar.*que'))[1]; -- barbeque
SELECT (regexp_match('foobarbequebaz', 'ЧТО-ТО'))[1]; -- NULL
SELECT (regexp_match('foobarbequebaz', '(bar)(que)'))[1:2]; -- barbeque

SELECT regexp_match('foobarbequebaz', '(bar).*(baz)'); -- {bar,baz}
SELECT (regexp_match('foobarbequebaz', '(foo)(bar).*(baz)'))[2:3]; -- {bar,baz}

-- НСИ
  -- вывести все имена ключей
SELECT regexp_match('$.extFields[*].id', '\.(.*)\['); -- {extFields}
SELECT (regexp_match('$.extFields[*].id', '\.(.*)[\[|$]]'))[1]; -- extFields

SELECT regexp_match('$.extFields[*].id', '\.(.*)'); -- {extFields[*].id}

SELECT regexp_match('$.extFields[*].idgg.pip', '([a-zA-Z]+).*\.([a-zA-Z]+)'); -- {extFields,pip} 
SELECT regexp_match('$.extFields[*].id.pip', '([a-zA-Z]+)\.([a-zA-Z]+)'); -- {id,pip}
```
### regexp_matches

Функция regexp_matches возвращает набор текстовых массивов со всеми подходящими подстроками, полученными в результате применения регулярного выражения POSIX к строке. 

флаг g, указывающий ей выдать все вхождения, а не только первое

```sql
SELECT regexp_matches('foo', 'not there');
-- (0 rows)
SELECT regexp_matches('foobarbequebazilbarfbonk', '(b[^b]+)(b[^b]+)', 'g');
/*   {bar,beque}
	 {bazil,barf}	 */
SELECT col1, (SELECT regexp_matches(col2, '(bar)(beque)')) FROM tab;

-- НСИ
  -- Получить все ключи
SELECT regexp_matches('$.extFields[*].pip.info[*].id', '\.([a-zA-Z]+)', 'g');
/*
 {extFields}
 {pip}
 {info}
 {id}
*/
  -- Получить все массивы
SELECT regexp_matches('$.extFields[*].pip.info[*].id', '\.([a-zA-Z]+)\[', 'g');
/*
{extFields}
{info}
*/
```


## POSIX Regular Expressions

[Подробнее о POSIX](https://losst.ru/chto-takoe-posix#comment-42106)

	POSIX — набор стандартов, описывающих интерфейсы между операционной системой и прикладной программой, библиотеку языка C и набор приложений и их интерфейсов 

В отличие от шаблонов LIKE, регулярное выражение может совпадать с любой частью строки, если только оно не привязано явно к началу и/или концу строки.

Регулярное выражение — это последовательность символов, представляющая собой краткое определение набора строк (регулярное множество). Строка считается соответствующей регулярному выражению, если она является членом регулярного множества, описываемого регулярным выражением.

Оператор | Обозначение
---------|-----------
.        | Аналог '_' в LIKE
.*       | Аналог '%' в LIKE
~	     | Проверяет соответствие регулярному выражению с учётом регистра	
~*    	 | Проверяет соответствие регулярному выражению без учёта регистра	
!~	     | Проверяет несоответствие регулярному выражению с учётом регистра	
!~*	     | Проверяет несоответствие регулярному выражению без учёта регистра
^        | Начало строки

```sql
SELECT 'Привет thomas, как дела?' ~ '.*thomas.*'; -- true
SELECT 'ThOmaS, это ты? 0_0' ~* '.*thomas.*'; -- true

SELECT 'Кто убил thomas-а!?' !~ '.*Thomas.*'; -- true
SELECT 'Кто убил thomas-а!?' !~ '.*thomas.*'; -- false

SELECT 'Кто убил thomas-а!?' !~* '.*Horos.*'; -- true

SELECT 'abc' ~ '^a'; -- true
SELECT 'abc' ~ '(b|d)'; -- true
```

```sql
'abc' ~ 'abc'    true
'abc' ~ '^a'     true
'abc' ~ '(b|d)'  true
'abc' ~ '^(b|c)' false
```


## НСИ

```sql
DO $$
DECLARE
l_one numeric := 1;
l_two numeric := 2;

--l_cur cursor;
l_rec record;
l_res text;
BEGIN
	--RAISE NOTICE 'hi l_one = %, l_two = %', l_one, l_two;

	--OPEN l_cur FOR 
		--SELECT regexp_matches('$.extFields[*].pip.info[*].id', '\.([a-zA-Z]+)\[', 'g');

	FOR l_rec IN (SELECT regexp_matches('$.extFields[*].pip.info[*].id', '\.([a-zA-Z]+)\[', 'g')) LOOP 
		RAISE NOTICE 'l_rec = %', l_rec;
		/*
		({extFields})
		({info})
		*/
	END LOOP;

	--SELECT regexp_matches('$.extFields[*].pip.info[*].id', '\.([a-zA-Z]+)\[', 'g') INTO l_rec;
	--RAISE NOTICE 'hi l_rec = %', l_rec; -- ({extFields})

	--SELECT regexp_replace('$.extFields[*].id', '\*', '5') INTO l_res; -- $.extFields[5].id
	--RAISE NOTICE 'l_res = %', l_res; --  $.extFields[5].id

END;
$$;

DO $$
DECLARE
v_json_path_1 text := '$[*].id';
v_json_path_2 text := '$[*].value';
v_json jsonb := '[{"id":100,"value":"LC"},{"id":101,"value":"Аккредитив"}]'::jsonb;
l_one numeric := 1;
l_two numeric := 2;

l_res text;
BEGIN
	SELECT regexp_replace(v_json_path_1::text, '\*'::text, l_one::text) INTO l_res; 
	RAISE NOTICE 'l_res = %', l_res; --  $[1].id
END;
$$;

```
```