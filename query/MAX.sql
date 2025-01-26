-- database: ../weather_stations.db
/* Trazendo precipitação máxima */
SELECT
  MAX(precipitation) AS max_precipitation
FROM
  STATION_DATA;

/* Trazendo máxima velocidade do vento e o ano */
SELECT
  year,
  MAX(wind_speed) AS max_wind_speed
FROM
  STATION_DATA;

/* Trazendo mínima velocidade do vento e o ano */
SELECT
  year,
  MIN(wind_speed) AS max_wind_speed
FROM
  STATION_DATA;

/* Trazendo máxima velocidade do vento agrupando por ano */
SELECT
  year,
  MAX(wind_speed) AS max_wind_speed
FROM
  STATION_DATA
GROUP BY
  year;
