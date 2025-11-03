-- 01. Querying data
SELECT LastName FROM employees;

SELECT
  LastName, FirstName
FROM
  employees;

SELECT
  * --모든 필터 선택--
FROM
  employees;


SELECT
  FirstName AS 이름
FROM
  employees;


SELECT
  Name,
  Milliseconds / 60000 AS '재생 시간(분)'
FROM
  tracks

-- 02. Sorting data

SELECT
  FirstName
FROM
  employees
ORDER BY
  FirstName ASC;

SELECT
  FirstName
FROM
  employees
ORDER BY
  FirstName DESC;

SELECT
  Country, City
FROM
  customers
ORDER BY
  FirstNAme DESC, City;

SELECT
  Name,
  Milliseconds / 60000 AS '재생 시간(분)'
FROM
  tracks
ORDER BY
  Milliseconds DESC;

-- NULL 정렬 예시

SELECT
  ReportsTo
FROM
  employees
ORDER BY
  ReportsTo;

-- 03. Filtering data

SELECT DISTINCT
  Country
FROM
 customers
ORDER BY
  Country;

SELECT
  LastName, FirstName, City
FROM
  customers
WHERE
  City != 'Prague';

SELECT
  LastName, FirstName, Company, Country
FROM
  customers
WHERE
  Company IS NULL
  AND Country = 'USA';

SELECT
  LastName, FirstName, Company, Country
FROM
  customers
WHERE
  Company IS NULL
  OR Country = 'USA';

SELECT
  Name, Bytes
FROM
  tracks
WHERE
  Bytes BETWEEN 100000 AND 500000
--WHERE
--  Bytes >= 100000 AND Bytes <= 500000
ORDER BY
  Bytes;


SELECT
  LastName, FirstName, Country
FROM
  customers
WHERE
  Country IN ('Canada', 'Germany', 'France');
--  WHERE
  --  Country = 'Canada'
  --  OR Country = 'Germany'
  --  OR Country = 'France';

SELECT
  LastName, FirstName, Country
FROM
  customers
WHERE
  Country NOT IN ('Canada', 'Germany', 'France');

SELECT
  LastName, FirstName
FROM
  customers
WHERE
  LastName LIKE '%son'

SELECT
  LastName, FirstName
FROM
  customers
WHERE
  FirstName LIKE '___a'


--LIMIT

SELECT
  select_list
FROM
  table_name
LIMIT[offset,] row_count;

-- 04. Grouping data


-- DISTINCT는 중복은 제거하지만, 정렬은 안함
-- Group by는 중복제거 뿐만아니라 기본적으로 정렬도 함
SELECT
  Country
FROM
  customers
GROUP BY
  Country

SELECT
  Country, COUNT(*)
FROM
  customers
GROUP BY
  Country

SELECT
  Composer,
  AVG(Bytes)
FROM
  tracks
GROUP BY
  Composer
ORDER BY
  AVG(Bytes) DESC;

SELECT
  Composer,
  AVG(Bytes) AS avgOfBytes
FROM
  tracks
GROUP BY
  Composer
ORDER BY
  avgOfBytes DESC; -- 키워드 이름으로 적용

-- Having

