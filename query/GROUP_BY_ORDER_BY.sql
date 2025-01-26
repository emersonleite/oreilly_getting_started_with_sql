-- database: ../weather_stations.db
/* Contando o total de registros */
SELECT
  COUNT(*) AS COUNTER
FROM
  STATION_DATA;

/* Com WHERE */
SELECT
  COUNT(*) AS COUNTER
FROM
  STATION_DATA
WHERE
  year = 2010;

SELECT
  COUNT(*) AS counter_tornado_1
FROM
  STATION_DATA
WHERE
  tornado = 1;

/* Agrupando separando a contagem por ano */
SELECT
  year,
  COUNT(*) AS counter_tornado_1_by_year
FROM
  STATION_DATA
WHERE
  tornado = 1
GROUP BY
  year;

/* Agrupando separando a contagem por mês */
SELECT
  month,
  COUNT(*) AS counter_tornado_1_by_month
FROM
  STATION_DATA
WHERE
  tornado = 1
GROUP BY
  month;

/* Contando registros nulos (NULL) em snow_depth */
SELECT
  COUNT(*) AS counter_snow_depth_is_null
FROM
  STATION_DATA
WHERE
  snow_depth IS NULL;

/* Contando registros maiores que 800 em station_pressure */
SELECT
  COUNT(*) AS counter_station_pressure_gt_800
FROM
  STATION_DATA
WHERE
  station_pressure > 800;

/* Contando valores por temperatura (temperature) */
SELECT
  temperature,
  COUNT(*) AS counter_temperature
FROM
  STATION_DATA
GROUP BY
  temperature;

/* Contando valores considerando posições ordinais */
SELECT
  year,
  month,
  COUNT(*) AS counter
FROM
  STATION_DATA
WHERE
  tornado = 1
GROUP BY
  1,
  2;

/* É possível a ordenação de registros, também com ORDER BY */
SELECT
  year,
  month,
  COUNT(*) AS counter
FROM
  STATION_DATA
WHERE
  tornado = 1
GROUP BY
  year,
  month
ORDER BY
  year,
  month;

/* Com ordenação descrescente DESC, por padão a ordenação é crescente, ou seja, ASC */
SELECT
  year,
  month,
  COUNT(*) AS counter
FROM
  STATION_DATA
WHERE
  tornado = 1
GROUP BY
  year,
  month
ORDER BY
  year DESC,
  month /* ASC */;

/* ASC aqui é redundante */
/* Contando valores não nulos de uma coluna */
SELECT
  COUNT(snow_depth) as counter_snow_depth_not_null
from
  STATION_DATA;

/* Calculando a média da temperatura com AVG (average), esse valor poderia ser arredondado com round */
SELECT
  month,
  AVG(temperature) as avg_temp
FROM
  STATION_DATA
WHERE
  year >= 2000
GROUP BY
  month;

/* Calculando a soma de valores com SUM */
SELECT
  year,
  SUM(snow_depth) as sum_snow_depth
FROM
  STATION_DATA
WHERE
  year >= 2000
GROUP BY
  year;

/* Utilizando HAVING para filtrar agregações, o que o WHERE não faz */
SELECT
  year,
  SUM(precipitation) as sum_precipitation
FROM
  STATION_DATA
GROUP BY
  year
HAVING
  sum_precipitation > 30;

/* Selecionando registros únicos (distintos) com DISTINCT */
SELECT DISTINCT
  station_number
FROM
  STATION_DATA;
