-- database: ../surgetech_conference.db
SELECT
  *
FROM
  ATTENDEE;

/* Apagando todos os registros */
DELETE from ATTENDEE;

/* Apagando com critérios */
DELETE FROM ATTENDEE
WHERE
  PHONE IS NULL
  AND EMAIL IS NULL;

/* Outra forma de apagar dados de uma tabela, que não é aceito no SQLite */
/* TRUNCATE TABLE ATTENDEE; */
