-- database: ../weather_stations.db
SELECT
  *
FROM
  STATION_DATA;

/* Selecionando por ano */
SELECT
  *
FROM
  STATION_DATA
WHERE
  year = 2010;

/* Excluindo o ano de 2010, com !=*/
SELECT
  *
FROM
  STATION_DATA
WHERE
  year != 2010;

/* OU com <> */
SELECT
  *
FROM
  STATION_DATA
WHERE
  year <> 2010;

/* Selecionando com BETWEEN */
SELECT
  *
FROM
  STATION_DATA
WHERE
  year BETWEEN 2005 AND 2010;

/* Utilizando >= e <= */
SELECT
  *
FROM
  STATION_DATA
WHERE
  year >= 2005
  AND year <= 2010;

/* Agora de modo exclusivo */
SELECT
  *
FROM
  STATION_DATA
WHERE
  year > 2005
  AND year < 2010;

/* Utilizando OR */
SELECT
  *
FROM
  STATION_DATA
WHERE
  MONTH = 3
  OR MONTH = 6;

/* Utilizando o IN */
SELECT
  *
FROM
  STATION_DATA
WHERE
  MONTH IN (3, 6, 9, 12);

/* Utilizando módulo % */
SELECT
  *
FROM
  STATION_DATA
WHERE
  MONTH % 3 = 0;

/* Utilizando WHERE com texto */
SELECT
  *
FROM
  STATION_DATA
WHERE
  report_code = '513A63';

/* Utilizando IN */
SELECT
  *
FROM
  STATION_DATA
WHERE
  report_code IN ('513A63', 'EF616A');

/* Utilizando funções para texto, nesse caso length */
SELECT
  *
FROM
  STATION_DATA
WHERE
  length(report_code) != 6;

/* Utilizando LIKE, para report_code começando com A */
SELECT
  *
FROM
  STATION_DATA
WHERE
  report_code LIKE 'A%';

/* Utilizando LIKE, para report_code com B como 1o e C como terceiro caracter. _ substitui um caracter qualquer */
SELECT
  *
FROM
  STATION_DATA
WHERE
  report_code LIKE 'B_C%';

/* Utilizando LIKE para B como primeiro, C como terceiro e F como sexto caracter */
SELECT
  *
FROM
  STATION_DATA
WHERE
  report_code LIKE 'B_C__F%';

/* Utilizando WHERE com booleanos */
SELECT
  *
FROM
  STATION_DATA
WHERE
  tornado = 1
  AND hail = 1;

/* Ou de forma simplificada, sem a expressão = 1 */
SELECT
  *
FROM
  STATION_DATA
WHERE
  tornado
  AND hail;

/* Para valores falsos precisa ser explícito */
SELECT
  *
FROM
  STATION_DATA
WHERE
  tornado = 0
  AND hail = 0;

/* Outra forma utilizando NOT para valores falsos */
SELECT
  *
FROM
  STATION_DATA
WHERE
  NOT tornado
  AND NOT hail;

/* Para valores nulos (NULL) não se utiliza igualdade, mas sim IS NULL ou IS NOT NULL */
SELECT
  *
FROM
  STATION_DATA
WHERE
  snow_depth IS NULL;

SELECT
  *
FROM
  STATION_DATA
WHERE
  snow_depth IS NOT NULL;

/* A função coalesce atribui ao valor NULL um valor pré determinado, abaixo para precipitation, nos quais os valores são tido como 0 */
SELECT
  *
FROM
  STATION_DATA
WHERE
  coalesce(precipitation, 0) <= 0.3
  AND coalesce(precipitation, 0) >= 0;

/* Agrupando condições com parênteses */
SELECT
  *
FROM
  STATION_DATA
WHERE
  (
    rain = 1
    AND temperature <= 32
  )
  OR snow_depth > 0;
