-- database: ../weather_stations.db
/* Contando o total de registros */
SELECT
  report_code,
  year,
  month,
  day,
  wind_speed,
  CASE
    WHEN wind_speed < 1 THEN 'Calm'
    WHEN wind_speed < 4 THEN 'Light air'
    WHEN wind_speed < 7 THEN 'Light breeze'
    WHEN wind_speed < 11 THEN 'Gentle breeze'
    WHEN wind_speed < 16 THEN 'Moderate breeze'
    WHEN wind_speed < 22 THEN 'Fresh breeze'
    WHEN wind_speed < 28 THEN 'Strong breeze'
    WHEN wind_speed < 34 THEN 'Moderate gale'
    WHEN wind_speed < 41 THEN 'Gale'
    WHEN wind_speed < 48 THEN 'Strong gale'
    WHEN wind_speed < 56 THEN 'Storm'
    WHEN wind_speed < 64 THEN 'Violent storm'
    ELSE 'Hurricane'
  END AS wind_speed_description
FROM
  STATION_DATA;

/* Agrupando condições */
SELECT
  year,
  CASE
    WHEN wind_speed < 1 THEN 'Calm'
    WHEN wind_speed < 4 THEN 'Light air'
    WHEN wind_speed < 7 THEN 'Light breeze'
    WHEN wind_speed < 11 THEN 'Gentle breeze'
    WHEN wind_speed < 16 THEN 'Moderate breeze'
    WHEN wind_speed < 22 THEN 'Fresh breeze'
    WHEN wind_speed < 28 THEN 'Strong breeze'
    WHEN wind_speed < 34 THEN 'Moderate gale'
    WHEN wind_speed < 41 THEN 'Gale'
    WHEN wind_speed < 48 THEN 'Strong gale'
    WHEN wind_speed < 56 THEN 'Storm'
    WHEN wind_speed < 64 THEN 'Violent storm'
    ELSE 'Hurricane'
  END AS wind_speed_description,
  COUNT(*) as counter_wind_speed
FROM
  STATION_DATA
GROUP BY
  1,
  2;

/* Calculando a precipitação máxima quando há ou não tornados */
SELECT
  year,
  MAX(
    CASE
      WHEN tornado = 0 THEN precipitation
      ELSE NULL
    END
  ) as max_non_tornado_precipitation,
  MAX(
    CASE
      WHEN tornado = 1 THEN precipitation
      ELSE NULL
    END
  ) as max_tornado_precipitation
FROM
  STATION_DATA
GROUP BY
  year;
